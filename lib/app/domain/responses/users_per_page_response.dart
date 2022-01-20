import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_per_page_response.freezed.dart';

@freezed
class UsersPerPage with _$UsersPerPage {
  factory UsersPerPage({
    required int page,
    required int perPage,
    required int total,
    required int totalPages,
    required List<User> data,
  }) = _UsersPerPage;

  factory UsersPerPage.fromJson(Map<String, dynamic> json) {
    final data = (json['data'] as List)
        .map(
          (e) => User.fromJson(e),
        )
        .toList();
    return UsersPerPage(
      page: json['page'],
      perPage: json['per_page'],
      total: json['total'],
      totalPages: json['total_pages'],
      data: data,
    );
  }
}
