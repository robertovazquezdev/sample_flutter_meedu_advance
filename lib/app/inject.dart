import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sample_flutter_meedu_advance/app/data/data_source/local/authentication_client.dart';
import 'package:sample_flutter_meedu_advance/app/data/data_source/remote/account_api.dart';
import 'package:sample_flutter_meedu_advance/app/data/data_source/remote/authentication_api.dart';
import 'package:sample_flutter_meedu_advance/app/data/helpers/http.dart';
import 'package:sample_flutter_meedu_advance/app/data/repositories_impl/account_repositiry_impl.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/account_repositiry.dart';

import 'data/repositories_impl/authentication_repository_impl.dart';
import 'domain/repositories/authentication_repository.dart';

Future<void> injectDependencies() async {
  /*inyeccion de dependecias con flutter_meedu*/

  final http = Http(baseUrl: 'https://reqres.in');
  final authClient = AuthenticationClient(
    const FlutterSecureStorage(),
  );

  /*con Get.i.put la instancia de la clase se crea en este momento*/
  //Get.i.put<AuthenticationRepository>(AuthenticationRepositoryImpl());

  /*con Get.i.lazyPut la instancia de la clase
  se crea cuando se haga el primer Get.i.find sobre ella
  */
  Get.i.lazyPut<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(
      AuthenticationAPI(http),
      authClient,
    ),
  );

  Get.i.lazyPut<AccountRepository>(
    () => AccountRepositoryImpl(
      AccountAPI(
        http,
        authClient,
      ),
    ),
  );
}
