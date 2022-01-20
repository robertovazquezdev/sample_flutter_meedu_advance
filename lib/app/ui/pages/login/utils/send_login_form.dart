import 'package:flutter/cupertino.dart';
import 'package:sample_flutter_meedu_advance/app/domain/responses/login_response.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_widgets/dialogs/dialogs.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_widgets/dialogs/progress_dialog.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/login/controller/login_provider.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:sample_flutter_meedu_advance/app/ui/routes/routes.dart';

Future<void> sendLoginForm(BuildContext context) async {
  final controller = loginProvider.read;
  if (controller.formKey.currentState!.validate()) {
    ProgressDialog.show(context);
    final response = await controller.submit();
    router.pop();
    if (response == LoginResponse.ok) {
      router.pushReplacementNamed(Routes.HOME);
    } else {
      Dialogs.alert(
        context,
        title: response.toString(),
      );
    }
  }
}
