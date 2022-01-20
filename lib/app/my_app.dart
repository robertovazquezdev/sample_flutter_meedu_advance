import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:sample_flutter_meedu_advance/app/ui/routes/app_routes.dart';
import 'package:sample_flutter_meedu_advance/app/ui/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      key: router.appKey, //se usa para las transiciones de flutter meedu
      navigatorKey: router.navigatorKey, //para la navegacion de flutter meedu
      navigatorObservers: [
        /*observa los cambios en las rutas de navegación,
        para la navegación de flutter_meedu se agrega el observer
        con esto puede saber cuando realizar
        dispose a los controladores
        */
        router.observer
      ],
      routes: appRoutes,
      initialRoute: Routes.SPLASH,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
