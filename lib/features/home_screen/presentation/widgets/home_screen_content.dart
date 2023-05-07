//

part of '../../home_screen.dart';

class _HomeScreenContent extends StatefulWidget {
  const _HomeScreenContent({
    //   super.key,
    required this.userId,
  });
  final String userId;

  @override
  State<_HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<_HomeScreenContent>
    with WidgetsBindingObserver {
  bool isActive = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ChatsBloc>().add(const ChatsEvent.goOnline());
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final bool newState = state == AppLifecycleState.resumed;
    debugPrint('didChangeAppLifecycleState: $newState, isActive: $isActive');
    if (newState != isActive) {
      isActive = newState;
      if (isActive) {
        context.read<ChatsBloc>().add(const ChatsEvent.goOnline());
      } else {
        context.read<ChatsBloc>().add(const ChatsEvent.goOffline());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            'Conversations',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
          ),
          actions: [
            IconButton(
              onPressed: () =>
                  context.read<HomeBloc>().add(const HomeEvent.logout()),
              icon: const Icon(Icons.logout),
            ),
          ],
          bottom: TabBar(
            indicatorColor: context.colorScheme.primary,
            unselectedLabelColor: Colors.grey.shade400,
            labelColor: context.colorScheme.primary,
            tabs: const [
              Tab(icon: Icon(Icons.groups)),
              Tab(icon: Icon(Icons.view_list_rounded)),
              Tab(icon: Icon(Icons.chat_bubble)),
            ],
          ),
        ),
        // appBar: AppNavBar(
        // title: 'Conversations',
        // actions: [
        //   IconButton(
        //     onPressed: () =>
        //         context.read<HomeBloc>().add(const HomeEvent.logout()),
        //     icon: const Icon(Icons.logout),
        //   ),
        // ],
        // ),
        drawer: const HomeDrawer(),
        body: TabBarView(
          children: [
            OnlineUsersListView(
              userId: widget.userId,
            ),
            ChatsListView(
              userId: context.read<AuthBloc>().state.user?.uid ?? '',
            ),
            const Icon(Icons.directions_bike),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () => dothings(context),
          child: const Icon(Icons.message),
        ),
      ),
    );
  }

  dothings(BuildContext context) {
    context.read<ChatsBloc>().add(const ChatsEvent.checkUp());
  }
}
