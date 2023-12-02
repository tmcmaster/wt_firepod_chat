import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';
import 'package:wt_firepod_chat/src/model/models.dart';
import 'package:wt_firepod_chat/src/transform/chat_user_transform.dart';
import 'package:wt_firepod_chat/src/transform/message_transform.dart';
import 'package:wt_firepod_chat/src/transform/room_type_transform.dart';

class FirepodChatRoomTransform with ModelTransform<FirepodChatRoom, Room> {
  static const userTransform = FirepodChatUserTransform();
  static const messageTransform = FirepodChatMessageTransform();
  static const roomTypeTransform = RoomTypeTransform();

  const FirepodChatRoomTransform();

  @override
  FirepodChatRoom decode(Room chatUser) {
    return FirepodChatRoom(
      id: chatUser.id,
      createdAt: chatUser.createdAt,
      imageUrl: chatUser.imageUrl,
      lastMessages: (chatUser.lastMessages ?? [])
          .map((message) => messageTransform.decode(message))
          .toList(),
      metadata: chatUser.metadata,
      name: chatUser.name,
      type: roomTypeTransform.decode(chatUser.type),
      updatedAt: chatUser.updatedAt,
      users: chatUser.users.map((user) => userTransform.decode(user)).toList(),
    );
  }

  @override
  Room encode(FirepodChatRoom ecompodRoom) {
    throw UnsupportedError(
      'FirepodChatRoomTransform.encode currently not supported.',
    );
  }
}
