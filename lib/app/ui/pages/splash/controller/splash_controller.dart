import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/account_repositiry.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/authentication_repository.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_controllers/session_controller.dart';
import 'package:sample_flutter_meedu_advance/app/ui/routes/routes.dart';

class SplashController extends SimpleNotifier {
  SplashController(this._sessionController) {
    if (kDebugMode) {
      print('::::Instancia creada de SplashController::::');
    }
    _init();
  }

  /*Get.i.find obtiene la dependecia inyectada anteriormente
    verificando que la instancia de la misma ya exista 
    y retorna esta misma, si no existe la crea.
  */
  //final _auth = Get.i.find<AuthenticationRepository>();

  /*esta es otra forma de usar Get.i.find,
  aqui ya infiere la dependencia que estamos buscando
  por que se le asigna el tipo a la variable asignada
  */
  final AuthenticationRepository _auth = Get.i.find();
  final AccountRepository _account = Get.i.find();
  final SessionController _sessionController;

  String? _routeName;
  String? get routeName => _routeName;

  Future<void> _init() async {
    final accessToken = await _auth.accessToken;
    if (kDebugMode) {
      print('accessToken $accessToken');
    }

    if (accessToken != null) {
      final user = await _account.user;
      if (user != null) {
        _sessionController.setUser(user);
        _routeName = Routes.HOME;
      } else {
        /*lo ideal seria redireccionar a ana
        pagina que muestre el problema
        como que el servicio esta caido 
        o algo asi
        */
        /*en este caso se deja que mande al login
        para practicidad del ejemplo
        */
        _routeName = Routes.LOGIN;
      }
    } else {
      _routeName = Routes.LOGIN;
    }

    notify();
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print('::::Instancia eliminada de SplashController::::');
    }
    super.dispose();
  }
}
