import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin FirepodChatProviders {
  static final firestore = Provider<FirebaseFirestore>(
    name: 'FirepodChatProviders.firestore',
    (ref) => throw Exception(
      'FirepodChatProviders.firestore provider needs to be overridden.',
    ),
  );
}
