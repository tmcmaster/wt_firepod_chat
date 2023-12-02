// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirepodChatMessageImpl _$$FirepodChatMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$FirepodChatMessageImpl(
      author: AppScaffoldUser.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as int,
      id: json['id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>,
      remoteId: json['remoteId'] as String?,
      repliedMessage: json['repliedMessage'] == null
          ? null
          : FirepodChatMessage.fromJson(
              json['repliedMessage'] as Map<String, dynamic>),
      roomId: json['roomId'] as String?,
      showStatus: json['showStatus'] as bool,
      status: $enumDecode(_$FirepodChatMessageStatusEnumMap, json['status']),
      type: $enumDecode(_$FirepodChatMessageTypeEnumMap, json['type']),
      updatedAt: json['updatedAt'] as int?,
    );

Map<String, dynamic> _$$FirepodChatMessageImplToJson(
        _$FirepodChatMessageImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'metadata': instance.metadata,
      'remoteId': instance.remoteId,
      'repliedMessage': instance.repliedMessage,
      'roomId': instance.roomId,
      'showStatus': instance.showStatus,
      'status': _$FirepodChatMessageStatusEnumMap[instance.status]!,
      'type': _$FirepodChatMessageTypeEnumMap[instance.type]!,
      'updatedAt': instance.updatedAt,
    };

const _$FirepodChatMessageStatusEnumMap = {
  FirepodChatMessageStatus.delivered: 'delivered',
  FirepodChatMessageStatus.error: 'error',
  FirepodChatMessageStatus.seen: 'seen',
  FirepodChatMessageStatus.sending: 'sending',
  FirepodChatMessageStatus.sent: 'sent',
  FirepodChatMessageStatus.unknown: 'unknown',
};

const _$FirepodChatMessageTypeEnumMap = {
  FirepodChatMessageType.audio: 'audio',
  FirepodChatMessageType.custom: 'custom',
  FirepodChatMessageType.file: 'file',
  FirepodChatMessageType.image: 'image',
  FirepodChatMessageType.system: 'system',
  FirepodChatMessageType.text: 'text',
  FirepodChatMessageType.unsupported: 'unsupported',
  FirepodChatMessageType.video: 'video',
  FirepodChatMessageType.unknown: 'unknown',
};

_$FirepodChatRoomImpl _$$FirepodChatRoomImplFromJson(
        Map<String, dynamic> json) =>
    _$FirepodChatRoomImpl(
      id: json['id'] as String,
      createdAt: json['createdAt'] as int?,
      imageUrl: json['imageUrl'] as String?,
      lastMessages: (json['lastMessages'] as List<dynamic>?)
          ?.map((e) => FirepodChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$FirepodChatRoomTypeEnumMap, json['type']),
      updatedAt: json['updatedAt'] as int?,
      users: (json['users'] as List<dynamic>)
          .map((e) => AppScaffoldUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FirepodChatRoomImplToJson(
        _$FirepodChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'imageUrl': instance.imageUrl,
      'lastMessages': instance.lastMessages,
      'metadata': instance.metadata,
      'name': instance.name,
      'type': _$FirepodChatRoomTypeEnumMap[instance.type],
      'updatedAt': instance.updatedAt,
      'users': instance.users,
    };

const _$FirepodChatRoomTypeEnumMap = {
  FirepodChatRoomType.channel: 'channel',
  FirepodChatRoomType.direct: 'direct',
  FirepodChatRoomType.group: 'group',
  FirepodChatRoomType.unknown: 'unknown',
};
