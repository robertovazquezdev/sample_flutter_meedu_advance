import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:sample_flutter_meedu_advance/app/ui/pages/home/controller/homer_provider.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/home/utils/logout.dart';
import 'package:sample_flutter_meedu_advance/app/ui/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => router.pushNamed(Routes.PROFILE),
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () => logout(context),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Consumer(
        builder: (_, ref, __) {
          final controller = ref.watch(homeProvider);
          final state = controller.state;

          if (!state.initialized) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.initialized && state.users == null) {
            return Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'retry',
                ),
              ),
            );
          }

          final users = state.users!;
          final scrollControler = controller.scrollController;

          return NotificationListener(
            onNotification: (t) {
              if (t is ScrollEndNotification) {
                final offset = scrollControler.position.pixels;
                final maxScrollExtent =
                    scrollControler.position.maxScrollExtent;
                /*estamos al finalde la lista*/
                if (offset >= maxScrollExtent) {
                  controller.load(state.page + 1);
                }
              }
              return true;
            },
            child: ListView.builder(
              controller: scrollControler,
              itemBuilder: (_, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.firstName),
                  subtitle: Text(user.email),
                  onTap: () => router.pushNamed(
                    Routes.USER_DETAIL,
                    arguments: user,
                  ),
                );
              },
              itemCount: users.length,
              itemExtent: 250,
            ),
          );
        },
      ),
    );
  }
}
