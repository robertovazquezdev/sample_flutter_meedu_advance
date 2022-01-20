import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'app/inject.dart';
import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*inyeccion de dependecias*/
  await injectDependencies();
  router.setDefaultTransition(router.Transition.downToUp);
  runApp(const MyApp());
}
