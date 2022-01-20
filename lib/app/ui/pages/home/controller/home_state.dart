import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(false) bool initialized,
    @Default(false) bool fetching,
    @Default(0) int page,
    @Default(0) int totalPages,
    List<User>? users,
  }) = _HomeState;

  static HomeState get initialState => const HomeState();
}
