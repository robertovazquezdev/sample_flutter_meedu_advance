import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';
import 'package:sample_flutter_meedu_advance/app/domain/responses/users_per_page_response.dart';

abstract class AccountRepository {
  Future<User?> get user;

  Future<UsersPerPage?> getUsersPerPage(int page);
}
