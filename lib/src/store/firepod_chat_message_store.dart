import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_firepod_chat/src/service/impl/firepod_chat_message_service_impl.dart';

mixin FirepodChatMessageStore {
  static final service = Provider(
    name: 'FirepodChatMessageStore.service',
    (ref) => FirepodChatMessageServiceImpl(ref),
  );
}
