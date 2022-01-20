import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_controllers/session_controller.dart';
import 'splash_controller.dart';

final splashProvider = SimpleProvider(
  (_) => SplashController(sessionProvider.read),
);

/*crear un provider con la propiedad
autoDispose en false
hace que no se ejecute el metodo
dispose del controller
*/
/*sirve por ejemplo cuando se quiere
tener estados globales, 
como guardar los datos de un usuario
un carrito de compras, etc.
*/
// final splashProvider = SimpleProvider(
//   (_) => SplashController(),
//   autoDispose: false,
// );
