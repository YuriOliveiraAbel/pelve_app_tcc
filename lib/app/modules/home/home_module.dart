import 'package:flutter_modular/flutter_modular.dart';
import 'home_bloc.dart';
import 'home_view.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const HomeView(),
          transition: TransitionType.rightToLeft,
          duration: const Duration(milliseconds: 700),
        ),
      ];
}
