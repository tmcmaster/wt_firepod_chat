import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_user.dart';

part 'models.freezed.dart';
part 'models.g.dart';

enum FirepodChatMessageStatus {
  delivered,
  error,
  seen,
  sending,
  sent,
  unknown,
}

enum FirepodChatRoomType {
  channel,
  direct,
  group,
  unknown,
}

enum FirepodChatMessageType {
  audio,
  custom,
  file,
  image,
  system,
  text,
  unsupported,
  video,
  unknown
}

@freezed
class FirepodChatMessage with _$FirepodChatMessage {
  const factory FirepodChatMessage({
    required AppScaffoldUser author,
    required int createdAt,
    required String id,
    required Map<String, dynamic> metadata,
    String? remoteId,
    required FirepodChatMessage? repliedMessage,
    String? roomId,
    required bool showStatus,
    required FirepodChatMessageStatus status,
    required FirepodChatMessageType type,
    required int? updatedAt,
  }) = _FirepodChatMessage;
  factory FirepodChatMessage.fromJson(Map<String, dynamic> json) =>
      _$FirepodChatMessageFromJson(json);
}

@freezed
class FirepodChatRoom with _$FirepodChatRoom {
  const factory FirepodChatRoom({
    required String id,
    required int? createdAt,
    required String? imageUrl,
    required List<FirepodChatMessage>? lastMessages,
    required Map<String, dynamic>? metadata,
    required String? name,
    required FirepodChatRoomType? type,
    required int? updatedAt,
    required List<AppScaffoldUser> users,
  }) = _FirepodChatRoom;

  factory FirepodChatRoom.fromJson(Map<String, dynamic> json) =>
      _$FirepodChatRoomFromJson(json);
}
