import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_user.dart';
import 'package:wt_firepod_chat/src/model/models.dart';

mixin FirepodChatMessageService {
  Future<AppScaffoldUser> createUser(AppScaffoldUser user);
  Stream<List<FirepodChatRoom>> getRooms();
  Stream<FirepodChatRoom> getRoom(String roomId);
  Future<String> createRoom(String entityId, String roomName);
  Stream<List<FirepodChatMessage>> getRoomMessages(FirepodChatRoom room);
}
