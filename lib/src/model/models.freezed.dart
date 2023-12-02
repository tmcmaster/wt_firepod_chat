// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirepodChatMessage _$FirepodChatMessageFromJson(Map<String, dynamic> json) {
  return _FirepodChatMessage.fromJson(json);
}

/// @nodoc
mixin _$FirepodChatMessage {
  AppScaffoldUser get author => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  String? get remoteId => throw _privateConstructorUsedError;
  FirepodChatMessage? get repliedMessage => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;
  bool get showStatus => throw _privateConstructorUsedError;
  FirepodChatMessageStatus get status => throw _privateConstructorUsedError;
  FirepodChatMessageType get type => throw _privateConstructorUsedError;
  int? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirepodChatMessageCopyWith<FirepodChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirepodChatMessageCopyWith<$Res> {
  factory $FirepodChatMessageCopyWith(
          FirepodChatMessage value, $Res Function(FirepodChatMessage) then) =
      _$FirepodChatMessageCopyWithImpl<$Res, FirepodChatMessage>;
  @useResult
  $Res call(
      {AppScaffoldUser author,
      int createdAt,
      String id,
      Map<String, dynamic> metadata,
      String? remoteId,
      FirepodChatMessage? repliedMessage,
      String? roomId,
      bool showStatus,
      FirepodChatMessageStatus status,
      FirepodChatMessageType type,
      int? updatedAt});

  $AppScaffoldUserCopyWith<$Res> get author;
  $FirepodChatMessageCopyWith<$Res>? get repliedMessage;
}

/// @nodoc
class _$FirepodChatMessageCopyWithImpl<$Res, $Val extends FirepodChatMessage>
    implements $FirepodChatMessageCopyWith<$Res> {
  _$FirepodChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? createdAt = null,
    Object? id = null,
    Object? metadata = null,
    Object? remoteId = freezed,
    Object? repliedMessage = freezed,
    Object? roomId = freezed,
    Object? showStatus = null,
    Object? status = null,
    Object? type = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AppScaffoldUser,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      remoteId: freezed == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessage: freezed == repliedMessage
          ? _value.repliedMessage
          : repliedMessage // ignore: cast_nullable_to_non_nullable
              as FirepodChatMessage?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      showStatus: null == showStatus
          ? _value.showStatus
          : showStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FirepodChatMessageStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirepodChatMessageType,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppScaffoldUserCopyWith<$Res> get author {
    return $AppScaffoldUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FirepodChatMessageCopyWith<$Res>? get repliedMessage {
    if (_value.repliedMessage == null) {
      return null;
    }

    return $FirepodChatMessageCopyWith<$Res>(_value.repliedMessage!, (value) {
      return _then(_value.copyWith(repliedMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirepodChatMessageImplCopyWith<$Res>
    implements $FirepodChatMessageCopyWith<$Res> {
  factory _$$FirepodChatMessageImplCopyWith(_$FirepodChatMessageImpl value,
          $Res Function(_$FirepodChatMessageImpl) then) =
      __$$FirepodChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppScaffoldUser author,
      int createdAt,
      String id,
      Map<String, dynamic> metadata,
      String? remoteId,
      FirepodChatMessage? repliedMessage,
      String? roomId,
      bool showStatus,
      FirepodChatMessageStatus status,
      FirepodChatMessageType type,
      int? updatedAt});

  @override
  $AppScaffoldUserCopyWith<$Res> get author;
  @override
  $FirepodChatMessageCopyWith<$Res>? get repliedMessage;
}

/// @nodoc
class __$$FirepodChatMessageImplCopyWithImpl<$Res>
    extends _$FirepodChatMessageCopyWithImpl<$Res, _$FirepodChatMessageImpl>
    implements _$$FirepodChatMessageImplCopyWith<$Res> {
  __$$FirepodChatMessageImplCopyWithImpl(_$FirepodChatMessageImpl _value,
      $Res Function(_$FirepodChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? createdAt = null,
    Object? id = null,
    Object? metadata = null,
    Object? remoteId = freezed,
    Object? repliedMessage = freezed,
    Object? roomId = freezed,
    Object? showStatus = null,
    Object? status = null,
    Object? type = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirepodChatMessageImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AppScaffoldUser,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      remoteId: freezed == remoteId
          ? _value.remoteId
          : remoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessage: freezed == repliedMessage
          ? _value.repliedMessage
          : repliedMessage // ignore: cast_nullable_to_non_nullable
              as FirepodChatMessage?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      showStatus: null == showStatus
          ? _value.showStatus
          : showStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FirepodChatMessageStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirepodChatMessageType,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirepodChatMessageImpl implements _FirepodChatMessage {
  const _$FirepodChatMessageImpl(
      {required this.author,
      required this.createdAt,
      required this.id,
      required final Map<String, dynamic> metadata,
      this.remoteId,
      required this.repliedMessage,
      this.roomId,
      required this.showStatus,
      required this.status,
      required this.type,
      required this.updatedAt})
      : _metadata = metadata;

  factory _$FirepodChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirepodChatMessageImplFromJson(json);

  @override
  final AppScaffoldUser author;
  @override
  final int createdAt;
  @override
  final String id;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final String? remoteId;
  @override
  final FirepodChatMessage? repliedMessage;
  @override
  final String? roomId;
  @override
  final bool showStatus;
  @override
  final FirepodChatMessageStatus status;
  @override
  final FirepodChatMessageType type;
  @override
  final int? updatedAt;

  @override
  String toString() {
    return 'FirepodChatMessage(author: $author, createdAt: $createdAt, id: $id, metadata: $metadata, remoteId: $remoteId, repliedMessage: $repliedMessage, roomId: $roomId, showStatus: $showStatus, status: $status, type: $type, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirepodChatMessageImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.remoteId, remoteId) ||
                other.remoteId == remoteId) &&
            (identical(other.repliedMessage, repliedMessage) ||
                other.repliedMessage == repliedMessage) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.showStatus, showStatus) ||
                other.showStatus == showStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      author,
      createdAt,
      id,
      const DeepCollectionEquality().hash(_metadata),
      remoteId,
      repliedMessage,
      roomId,
      showStatus,
      status,
      type,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirepodChatMessageImplCopyWith<_$FirepodChatMessageImpl> get copyWith =>
      __$$FirepodChatMessageImplCopyWithImpl<_$FirepodChatMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirepodChatMessageImplToJson(
      this,
    );
  }
}

abstract class _FirepodChatMessage implements FirepodChatMessage {
  const factory _FirepodChatMessage(
      {required final AppScaffoldUser author,
      required final int createdAt,
      required final String id,
      required final Map<String, dynamic> metadata,
      final String? remoteId,
      required final FirepodChatMessage? repliedMessage,
      final String? roomId,
      required final bool showStatus,
      required final FirepodChatMessageStatus status,
      required final FirepodChatMessageType type,
      required final int? updatedAt}) = _$FirepodChatMessageImpl;

  factory _FirepodChatMessage.fromJson(Map<String, dynamic> json) =
      _$FirepodChatMessageImpl.fromJson;

  @override
  AppScaffoldUser get author;
  @override
  int get createdAt;
  @override
  String get id;
  @override
  Map<String, dynamic> get metadata;
  @override
  String? get remoteId;
  @override
  FirepodChatMessage? get repliedMessage;
  @override
  String? get roomId;
  @override
  bool get showStatus;
  @override
  FirepodChatMessageStatus get status;
  @override
  FirepodChatMessageType get type;
  @override
  int? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirepodChatMessageImplCopyWith<_$FirepodChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FirepodChatRoom _$FirepodChatRoomFromJson(Map<String, dynamic> json) {
  return _FirepodChatRoom.fromJson(json);
}

/// @nodoc
mixin _$FirepodChatRoom {
  String get id => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<FirepodChatMessage>? get lastMessages =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  FirepodChatRoomType? get type => throw _privateConstructorUsedError;
  int? get updatedAt => throw _privateConstructorUsedError;
  List<AppScaffoldUser> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirepodChatRoomCopyWith<FirepodChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirepodChatRoomCopyWith<$Res> {
  factory $FirepodChatRoomCopyWith(
          FirepodChatRoom value, $Res Function(FirepodChatRoom) then) =
      _$FirepodChatRoomCopyWithImpl<$Res, FirepodChatRoom>;
  @useResult
  $Res call(
      {String id,
      int? createdAt,
      String? imageUrl,
      List<FirepodChatMessage>? lastMessages,
      Map<String, dynamic>? metadata,
      String? name,
      FirepodChatRoomType? type,
      int? updatedAt,
      List<AppScaffoldUser> users});
}

/// @nodoc
class _$FirepodChatRoomCopyWithImpl<$Res, $Val extends FirepodChatRoom>
    implements $FirepodChatRoomCopyWith<$Res> {
  _$FirepodChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? imageUrl = freezed,
    Object? lastMessages = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? updatedAt = freezed,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessages: freezed == lastMessages
          ? _value.lastMessages
          : lastMessages // ignore: cast_nullable_to_non_nullable
              as List<FirepodChatMessage>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirepodChatRoomType?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppScaffoldUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirepodChatRoomImplCopyWith<$Res>
    implements $FirepodChatRoomCopyWith<$Res> {
  factory _$$FirepodChatRoomImplCopyWith(_$FirepodChatRoomImpl value,
          $Res Function(_$FirepodChatRoomImpl) then) =
      __$$FirepodChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? createdAt,
      String? imageUrl,
      List<FirepodChatMessage>? lastMessages,
      Map<String, dynamic>? metadata,
      String? name,
      FirepodChatRoomType? type,
      int? updatedAt,
      List<AppScaffoldUser> users});
}

/// @nodoc
class __$$FirepodChatRoomImplCopyWithImpl<$Res>
    extends _$FirepodChatRoomCopyWithImpl<$Res, _$FirepodChatRoomImpl>
    implements _$$FirepodChatRoomImplCopyWith<$Res> {
  __$$FirepodChatRoomImplCopyWithImpl(
      _$FirepodChatRoomImpl _value, $Res Function(_$FirepodChatRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? imageUrl = freezed,
    Object? lastMessages = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? updatedAt = freezed,
    Object? users = null,
  }) {
    return _then(_$FirepodChatRoomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessages: freezed == lastMessages
          ? _value._lastMessages
          : lastMessages // ignore: cast_nullable_to_non_nullable
              as List<FirepodChatMessage>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirepodChatRoomType?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppScaffoldUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirepodChatRoomImpl implements _FirepodChatRoom {
  const _$FirepodChatRoomImpl(
      {required this.id,
      required this.createdAt,
      required this.imageUrl,
      required final List<FirepodChatMessage>? lastMessages,
      required final Map<String, dynamic>? metadata,
      required this.name,
      required this.type,
      required this.updatedAt,
      required final List<AppScaffoldUser> users})
      : _lastMessages = lastMessages,
        _metadata = metadata,
        _users = users;

  factory _$FirepodChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirepodChatRoomImplFromJson(json);

  @override
  final String id;
  @override
  final int? createdAt;
  @override
  final String? imageUrl;
  final List<FirepodChatMessage>? _lastMessages;
  @override
  List<FirepodChatMessage>? get lastMessages {
    final value = _lastMessages;
    if (value == null) return null;
    if (_lastMessages is EqualUnmodifiableListView) return _lastMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? name;
  @override
  final FirepodChatRoomType? type;
  @override
  final int? updatedAt;
  final List<AppScaffoldUser> _users;
  @override
  List<AppScaffoldUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'FirepodChatRoom(id: $id, createdAt: $createdAt, imageUrl: $imageUrl, lastMessages: $lastMessages, metadata: $metadata, name: $name, type: $type, updatedAt: $updatedAt, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirepodChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._lastMessages, _lastMessages) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      imageUrl,
      const DeepCollectionEquality().hash(_lastMessages),
      const DeepCollectionEquality().hash(_metadata),
      name,
      type,
      updatedAt,
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirepodChatRoomImplCopyWith<_$FirepodChatRoomImpl> get copyWith =>
      __$$FirepodChatRoomImplCopyWithImpl<_$FirepodChatRoomImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirepodChatRoomImplToJson(
      this,
    );
  }
}

abstract class _FirepodChatRoom implements FirepodChatRoom {
  const factory _FirepodChatRoom(
      {required final String id,
      required final int? createdAt,
      required final String? imageUrl,
      required final List<FirepodChatMessage>? lastMessages,
      required final Map<String, dynamic>? metadata,
      required final String? name,
      required final FirepodChatRoomType? type,
      required final int? updatedAt,
      required final List<AppScaffoldUser> users}) = _$FirepodChatRoomImpl;

  factory _FirepodChatRoom.fromJson(Map<String, dynamic> json) =
      _$FirepodChatRoomImpl.fromJson;

  @override
  String get id;
  @override
  int? get createdAt;
  @override
  String? get imageUrl;
  @override
  List<FirepodChatMessage>? get lastMessages;
  @override
  Map<String, dynamic>? get metadata;
  @override
  String? get name;
  @override
  FirepodChatRoomType? get type;
  @override
  int? get updatedAt;
  @override
  List<AppScaffoldUser> get users;
  @override
  @JsonKey(ignore: true)
  _$$FirepodChatRoomImplCopyWith<_$FirepodChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
