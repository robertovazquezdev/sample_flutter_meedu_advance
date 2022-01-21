import 'package:flutter/material.dart';
import 'package:flutter_meedu/state.dart';
import 'controller/splash_controller.dart';
import 'controller/splash_provider.dart';

import 'package:flutter_meedu/router.dart' as router;

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*ProviderListener sirve para escuchar
    los distintos tipo de cambios y estados del controller
    y ejecutar una funcion por cada uno
    */
    return ProviderListener<SplashController>(
      provider: splashProvider,
      /*onDispose se ejecuta independientemente
      si al crear el provider se asigno la propiedad
      autodisponse = false
      o no se agregó a los navigatorObservers
      el router.observer
      */
      /*sirve para liberar recursos 
      del controller cuando
      hayamos optado por aplicar alguna de las opciones
      arriba mencionadas
      */
      // onDispose: (_, __) {
      //   splashProvider.dispose();
      // },
      /*onChange se dispara cuando en el controlador
      llama a notify()
      */
      onChange: (_, controller) {
        final routeName = controller.routeName;
        if (routeName != null) {
          /*se pueden usar los comandos
          de la navegacion normal
          */
          //Navigator.pushReplacementNamed(_, routeName);

          /*comando para la navegacion con flutter_meedu
          utilizando la ventaja de este
          como el paso de argumentos
          transicion personalizada y su duración
          */
          router.pushReplacementNamed(
            routeName,
            transition: router.Transition.fadeIn,
          );
        }
      },
      builder: (_, controller) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
