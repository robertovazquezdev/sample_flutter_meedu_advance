import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_controllers/session_controller.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/profile/utils/update_email.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Consumer(
          builder: (context, ref, child) {
            final user = ref.watch(sessionProvider).user!;
            return ListView(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: ClipOval(
                    child: Image.network(
                      user.avatar,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => updateEmail(),
                  child: Text(user.email),
                ),
              ],
            );
          },
        ));
  }
}
