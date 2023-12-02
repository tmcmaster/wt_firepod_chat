import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';
import 'package:wt_firepod_chat/src/model/models.dart';

class MessageTypeTransform
    with ModelTransform<FirepodChatMessageType, MessageType?> {
  @override
  const MessageTypeTransform();

  @override
  FirepodChatMessageType decode(MessageType? chatMessageType) {
    if (chatMessageType == null) return FirepodChatMessageType.unknown;
    switch (chatMessageType) {
      case MessageType.text:
        return FirepodChatMessageType.text;
      case MessageType.image:
        return FirepodChatMessageType.image;
      case MessageType.audio:
        return FirepodChatMessageType.audio;
      case MessageType.custom:
        return FirepodChatMessageType.custom;
      case MessageType.file:
        return FirepodChatMessageType.file;
      case MessageType.system:
        return FirepodChatMessageType.system;
      case MessageType.unsupported:
        return FirepodChatMessageType.unsupported;
      case MessageType.video:
        return FirepodChatMessageType.video;
    }
  }

  @override
  MessageType? encode(FirepodChatMessageType ecompodMessageType) {
    switch (ecompodMessageType) {
      case FirepodChatMessageType.text:
        return MessageType.text;
      case FirepodChatMessageType.image:
        return MessageType.image;
      case FirepodChatMessageType.audio:
        return MessageType.audio;
      case FirepodChatMessageType.custom:
        return MessageType.custom;
      case FirepodChatMessageType.file:
        return MessageType.file;
      case FirepodChatMessageType.system:
        return MessageType.system;
      case FirepodChatMessageType.unsupported:
        return MessageType.unsupported;
      case FirepodChatMessageType.video:
        return MessageType.video;
      case FirepodChatMessageType.unknown:
        return null;
    }
  }
}
