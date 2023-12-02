import 'package:firebase_auth/firebase_auth.dart';
import 'package:wt_app_scaffold/app_platform/auth/app_scaffold_user.dart';
import 'package:wt_firepod_chat/src/common/model_transform.dart';

class FirebaseUserTransform with ModelTransform<AppScaffoldUser, User> {
  const FirebaseUserTransform();

  @override
  AppScaffoldUser decode(User chatUser) {
    return AppScaffoldUser.empty().copyWith(
      id: chatUser.uid,
    );
  }

  @override
  User encode(AppScaffoldUser internalModel) {
    // TODO: implement encode
    throw UnimplementedError();
  }
}
