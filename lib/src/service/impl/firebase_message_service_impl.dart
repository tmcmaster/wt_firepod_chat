import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_authentication_store.dart';
import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_user.dart';
import 'package:wt_firepod_chat/src/model/models.dart';
import 'package:wt_firepod_chat/src/providers/firepod_chat_providers.dart';
import 'package:wt_firepod_chat/src/service/client/firebase_message_client.dart';
import 'package:wt_firepod_chat/src/service/ecompod_message_service.dart';
import 'package:wt_firepod_chat/src/transform/chat_user_transform.dart';
import 'package:wt_firepod_chat/src/transform/message_transform.dart';
import 'package:wt_firepod_chat/src/transform/room_transform.dart';

class FirebaseMessageService with FirepodChatMessageService {
  static final provider = Provider(
    name: 'FirebaseMessageService',
    (ref) => FirebaseMessageService(ref),
  );
  final Ref ref;
  FirebaseMessageService(this.ref);

  static const userTransform = FirepodChatUserTransform();
  static const roomTransform = FirepodChatRoomTransform();
  static const messageTransform = FirepodChatMessageTransform();

  @override
  Stream<List<FirepodChatRoom>> getRooms() {
    return ref.read(FirebaseMessageClient.provider).getRooms().map(
          (roomList) => roomList
              .map(
                (room) => roomTransform.decode(room),
              )
              .toList(),
        );
  }

  @override
  Stream<FirepodChatRoom> getRoom(String roomId) {
    final roomsStream =
        ref.read(FirebaseMessageClient.provider).getRoom(roomId);
    return roomsStream.map(
      (room) => roomTransform.decode(room),
    );
  }

  @override
  Stream<List<FirepodChatMessage>> getRoomMessages(FirepodChatRoom room) {
    final chatRoom = roomTransform.encode(room);

    final messageStream =
        ref.read(FirebaseMessageClient.provider).getRoomMessages(chatRoom);

    return messageStream.map(
      (messageList) => messageList
          .map(
            (message) => messageTransform.decode(message),
          )
          .toList(),
    );
  }

  @override
  Future<String> createRoom(String entityId, String roomName) async {
    final user = ref.read(AppScaffoldAuthenticationStore.user);
    final userId = user.id;

    return await ref.read(FirebaseMessageClient.provider).createRoom(
          userId: userId,
          entityId: entityId,
          roomName: roomName,
        );
  }

  @override
  Future<AppScaffoldUser> createUser(AppScaffoldUser user) async {
    final chatUser = await ref.read(FirebaseMessageClient.provider).createUser(
          userId: user.id,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
        );
    return userTransform.decode(chatUser);
  }

  Future<void> saveToFirestore(AppScaffoldUser userDetails) async {
    final user = ref.read(AppScaffoldAuthenticationStore.user);
    await ref
        .read(FirepodChatProviders.firestore)
        .collection('users')
        .doc(user.id)
        .set(userDetails.toJson());
  }
}
