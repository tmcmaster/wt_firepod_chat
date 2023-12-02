import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_user.dart';
import 'package:wt_firepod_chat/src/model/models.dart';
import 'package:wt_firepod_chat/src/service/ecompod_message_service.dart';
import 'package:wt_firepod_chat/src/service/impl/firebase_message_service_impl.dart';
import 'package:wt_logging/wt_logging.dart';

class FirepodChatMessageServiceImpl with FirepodChatMessageService {
  static final log = logger(FirepodChatMessageService, level: Level.debug);

  final Ref ref;

  FirepodChatMessageServiceImpl(this.ref);

  FirepodChatMessageService clientService() {
    return ref.read(FirebaseMessageService.provider);
  }

  @override
  Future<String> createRoom(String entityId, String roomName) async {
    return clientService().createRoom(entityId, roomName);
  }

  @override
  Future<AppScaffoldUser> createUser(AppScaffoldUser user) async {
    return clientService().createUser(user);
  }

  @override
  Stream<FirepodChatRoom> getRoom(String roomId) {
    return clientService().getRoom(roomId);
  }

  @override
  Stream<List<FirepodChatMessage>> getRoomMessages(FirepodChatRoom room) {
    return clientService().getRoomMessages(room);
  }

  @override
  Stream<List<FirepodChatRoom>> getRooms() {
    return clientService().getRooms();
  }
}
