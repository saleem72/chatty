//

part of '../../home_screen.dart';

class _HomeScreenContent extends StatelessWidget {
  _HomeScreenContent({
    //   super.key,
    required this.userId,
  });
  final String userId;
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
            unselectedLabelColor: Colors.blue,
            labelColor: Colors.green,
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
              userId: userId,
            ),
            ChatsListView(
              userId: context.read<AuthBloc>().state.user?.uid ?? '',
            ),
            const Icon(Icons.directions_bike),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
