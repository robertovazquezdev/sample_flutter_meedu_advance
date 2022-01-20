import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/home/controller/home_state.dart';
import 'home_controller.dart';

final homeProvider = StateProvider<HomeController, HomeState>(
  (_) => HomeController(),
);
