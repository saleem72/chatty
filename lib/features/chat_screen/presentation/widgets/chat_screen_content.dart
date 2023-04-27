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
          SendMessageView(user: user),
        ],
      ),
    );
  }
}

class SendMessageView extends StatefulWidget {
  const SendMessageView({
    super.key,
    required this.user,
  });
  final AppUser user;
  @override
  State<SendMessageView> createState() => _SendMessageViewState();
}

class _SendMessageViewState extends State<SendMessageView> {
  final TextEditingController _message = TextEditingController();

  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

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
            Expanded(
              child: SendMessageTextField(controller: _message),
            ),
            IconButton(
              onPressed: () => _sendMessage(context),
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

  _sendMessage(BuildContext context) {
    final sender = context.read<AuthBloc>().state.user?.uid ?? '';
    final receiver = widget.user.uid;
    final message = Message(
      sender: sender,
      receiver: receiver,
      content: _message.text,
      timestamp: DateTime.now(),
      status: MessageDeliverStatus.sent,
    );
    context
        .read<UserChatBloc>()
        .add(UserChatEvent.sendMessage(message: message));
  }
}

class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
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
