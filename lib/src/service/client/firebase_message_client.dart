import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_firepod_chat/src/providers/firepod_chat_providers.dart';
import 'package:wt_logging/wt_logging.dart';

class FirebaseMessageClient {
  static final log = logger(FirebaseMessageClient, level: Level.debug);

  static final provider = Provider(
    (ref) => FirebaseMessageClient(ref),
    name: 'MessagingService',
  );
  final Ref ref;
  FirebaseMessageClient(this.ref);

  Stream<List<types.Room>> getRooms() {
    // final query = ref
    //     .read(FirebaseProviders.firestore)
    //     .collection('rooms')
    //     .where('userIds', arrayContains: 'QhRfQubATEaTZVAHEgOWLlXUGuR2');
    // final snapshot = query
    //     .get()
    //     .asStream()
    //     .asyncMap((e) => e.docs.map((e) => e.data()))
    //     .listen((event) {
    //   print('AAAAAA: $event');
    // });

    // final a = FirebaseChatCore.instance.rooms();
    // return a;
    // return Stream.empty();
    return FirebaseChatCore.instance.rooms();
  }

  Stream<types.Room> getRoom(String roomId) {
    return FirebaseChatCore.instance.room(roomId);
  }

  Stream<List<types.Message>> getRoomMessages(types.Room room) {
    return FirebaseChatCore.instance.messages(room);
  }

  Future<String> createRoom({
    required String userId,
    required String entityId,
    required String roomName,
  }) async {
    final firestore = ref.read(FirepodChatProviders.firestore);
    final snapshot = await firestore.collection('/rooms').add({
      'createdAt': FieldValue.serverTimestamp(),
      'imageUrl': null,
      'metadata': null,
      'name': roomName,
      'type': types.RoomType.direct.toString(),
      'updatedAt': FieldValue.serverTimestamp(),
      'userIds': [userId, entityId],
      'userRoles': null,
    });

    return snapshot.id;
  }

  Future<types.User> createUser({
    required String userId,
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    final user = types.User(
      firstName: firstName,
      lastName: lastName,
      id: userId,
      imageUrl: faker.image.image(
        width: 200,
        height: 200,
        keywords: ['animal'],
      ),
    );
    log.d('Creating user: ${user.id}');

    await FirebaseChatCore.instance.createUserInFirestore(user);
    log.d('Created user: ${user.id}');

    return user;
  }

  Stream<List<types.User>> getUsers() {
    return FirebaseChatCore.instance.users();
  }
}
