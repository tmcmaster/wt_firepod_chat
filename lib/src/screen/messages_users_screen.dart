import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wt_app_scaffold/app_scaffolds.dart';
import 'package:wt_firepod_chat/src/service/client/firebase_message_client.dart';
import 'package:wt_logging/wt_logging.dart';

// TODO: Need to cleanup this class
class MessagesUsersScreen extends ConsumerWidget {
  static final log = logger(MessagesUsersScreen, level: Level.debug);

  const MessagesUsersScreen({super.key});

  Widget _buildAvatar(types.User user) {
    const color = Colors.blue;
    final hasImage = user.imageUrl != null;
    final name = '${user.firstName} ${user.lastName}';

    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: CircleAvatar(
        backgroundColor: hasImage ? Colors.transparent : color,
        backgroundImage: hasImage ? NetworkImage(user.imageUrl!) : null,
        radius: 20,
        child: !hasImage
            ? Text(
                name.isEmpty ? '' : name[0].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              )
            : null,
      ),
    );
  }

  Future<void> _handlePressed(
    types.User otherUser,
    BuildContext context,
    WidgetRef ref,
  ) async {
    final room = await FirebaseChatCore.instance.createRoom(otherUser);

    ref.read(GoRouterMenuApp.goRouter).go('/chat', extra: room);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text('Users'),
        actions: [
          TextButton(
            onPressed: () {
              final user = ref.read(AppScaffoldAuthenticationStore.user);
              ref.read(FirebaseMessageClient.provider).createRoom(
                    userId: user.id,
                    entityId: user.id,
                    roomName: 'Testing',
                  );
            },
            child: const Text('Create Room'),
          ),
          TextButton(
            onPressed: () {
              final user = ref.read(AppScaffoldAuthenticationStore.user);
              log.d('Creating user: ${user.email}');
              ref.read(FirebaseMessageClient.provider).createUser(
                    userId: user.id,
                    firstName: 'Dev Three',
                    lastName: 'WonkyTech',
                    email: 'dev3@wonkytech.net',
                  );
            },
            child: const Text('Create User'),
          ),
          TextButton(
            onPressed: () {
              final user = ref.read(AppScaffoldAuthenticationStore.user);
              final rooms = ref.read(FirebaseMessageClient.provider).getRooms();
              log.d('Listing rooms');
              rooms.forEach((room) {
                log.d('User(${user.name}) : Rooms(${rooms.length})}');
              });
            },
            child: const Text('List Rooms'),
          ),
          TextButton(
            onPressed: () async {
              final users = ref.read(FirebaseMessageClient.provider).getUsers();
              log.d('Listing users:  $users');
              final a = await users.map((event) {
                event.length;
              }).toList();
              log.d('AAA: $a');
            },
            child: const Text('List Users'),
          ),
        ],
      ),
      body: StreamBuilder<List<types.User>>(
        stream: FirebaseChatCore.instance.users(),
        initialData: const [],
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                bottom: 200,
              ),
              child: const Text('No users'),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final user = snapshot.data![index];

              return GestureDetector(
                onTap: () {
                  _handlePressed(user, context, ref);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      _buildAvatar(user),
                      Text('${user.firstName} ${user.lastName}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
