import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';
import 'package:wt_firepod_chat/src/model/models.dart';

class MessageStatusTransform
    with ModelTransform<FirepodChatMessageStatus, Status?> {
  @override
  const MessageStatusTransform();

  @override
  FirepodChatMessageStatus decode(Status? chatStatus) {
    if (chatStatus == null) return FirepodChatMessageStatus.unknown;
    switch (chatStatus) {
      case Status.sent:
        return FirepodChatMessageStatus.sent;
      case Status.sending:
        return FirepodChatMessageStatus.sending;
      case Status.error:
        return FirepodChatMessageStatus.error;
      case Status.delivered:
        return FirepodChatMessageStatus.delivered;
      case Status.seen:
        return FirepodChatMessageStatus.seen;
    }
  }

  @override
  Status? encode(FirepodChatMessageStatus ecompodMessageStatus) {
    switch (ecompodMessageStatus) {
      case FirepodChatMessageStatus.sent:
        return Status.sent;
      case FirepodChatMessageStatus.sending:
        return Status.sending;
      case FirepodChatMessageStatus.error:
        return Status.error;
      case FirepodChatMessageStatus.delivered:
        return Status.delivered;
      case FirepodChatMessageStatus.seen:
        return Status.seen;
      case FirepodChatMessageStatus.unknown:
        return null;
    }
  }
}
