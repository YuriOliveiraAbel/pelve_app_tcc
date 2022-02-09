import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/modules/helper/helper_view.dart';
import 'package:pelve_app/app/modules/helper/quiz/quiz_bloc.dart';
import 'package:pelve_app/app/modules/helper/quiz/quiz_view.dart';

class HelperModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => QuizBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const HelperView(),
          transition: TransitionType.rightToLeft,
          duration: const Duration(milliseconds: 600),
        ),
        ChildRoute(
          '/quiz',
          child: (_, args) => const QuizView(),
          transition: TransitionType.rightToLeft,
          duration: const Duration(milliseconds: 600),
        ),
      ];
}
