import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';
import 'package:wt_firepod_chat/src/model/models.dart';

class RoomTypeTransform with ModelTransform<FirepodChatRoomType, RoomType?> {
  @override
  const RoomTypeTransform();

  @override
  FirepodChatRoomType decode(RoomType? roomType) {
    if (roomType == null) return FirepodChatRoomType.unknown;
    switch (roomType) {
      case RoomType.group:
        return FirepodChatRoomType.group;
      case RoomType.channel:
        return FirepodChatRoomType.channel;
      case RoomType.direct:
        return FirepodChatRoomType.direct;
    }
  }

  @override
  RoomType? encode(FirepodChatRoomType ecompodRoomType) {
    switch (ecompodRoomType) {
      case FirepodChatRoomType.group:
        return RoomType.group;
      case FirepodChatRoomType.channel:
        return RoomType.channel;
      case FirepodChatRoomType.direct:
        return RoomType.direct;
      case FirepodChatRoomType.unknown:
        return null;
    }
  }
}
