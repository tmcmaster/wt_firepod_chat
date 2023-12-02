import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_user.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';

class FirepodChatUserTransform with ModelTransform<AppScaffoldUser, User> {
  const FirepodChatUserTransform();

  @override
  AppScaffoldUser decode(User chatUser) {
    return AppScaffoldUser.empty().copyWith(
      id: chatUser.id,
    );
  }

  @override
  User encode(AppScaffoldUser internalModel) {
    // TODO: implement encode
    throw UnimplementedError();
  }
}
