import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';
import 'package:wt_firepod_chat/src/model/models.dart';
import 'package:wt_firepod_chat/src/transform/chat_user_transform.dart';
import 'package:wt_firepod_chat/src/transform/message_status_transform.dart';
import 'package:wt_firepod_chat/src/transform/message_type_transform.dart';

class FirepodChatMessageTransform
    with ModelTransform<FirepodChatMessage, Message> {
  static const userTransform = FirepodChatUserTransform();
  static const statusTransform = MessageStatusTransform();
  static const typeTransform = MessageTypeTransform();

  const FirepodChatMessageTransform();

  @override
  FirepodChatMessage decode(Message chatUser) {
    return FirepodChatMessage(
      id: chatUser.id,
      author: userTransform.decode(chatUser.author),
      createdAt: chatUser.createdAt ?? 0,
      metadata: chatUser.metadata ?? {},
      remoteId: chatUser.remoteId,
      repliedMessage: null,
      roomId: chatUser.roomId,
      showStatus: chatUser.showStatus ?? false,
      status: statusTransform.decode(chatUser.status),
      type: typeTransform.decode(chatUser.type),
      updatedAt: chatUser.updatedAt,
    );
  }

  @override
  Message encode(FirepodChatMessage ecompodMessage) {
    throw UnsupportedError(
      'FirepodChatMessageTransform.encode currently not supported.',
    );
  }
}
