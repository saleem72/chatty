//

part of '../../home_screen.dart';

class _HomeScreenContent extends StatelessWidget {
  // const _HomeScreenContent({
  //   super.key,
  // });

  const _HomeScreenContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppNavBar(
        title: 'Conversations',
        actions: [
          IconButton(
            onPressed: () =>
                context.read<UsersBloc>().add(const UsersEvent.logout()),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: const OnlineUsersListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
