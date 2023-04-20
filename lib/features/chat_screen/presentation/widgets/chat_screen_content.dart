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
            ),
          ),
          const SendMessageView(),
        ],
      ),
    );
  }
}

class SendMessageView extends StatelessWidget {
  const SendMessageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Color(0xFFADB5BD),
              ),
            ),
            const Expanded(
              child: SendMessageTextField(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send_rounded,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        style: context.bodyTextStyle?.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF0F1828),
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
