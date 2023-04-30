//

part of '../../chat_screen.dart';

class _ChatScreenContent extends StatelessWidget {
  const _ChatScreenContent({
    // super.key,
    required this.user,
  });

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavBar(
        title: user.name ?? '',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFF7F7FC),
              child: MessagesForChat(partner: user),
            ),
          ),
          SendMessageView(user: user),
        ],
      ),
    );
  }
}
