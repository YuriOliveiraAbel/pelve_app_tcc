import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/modules/helper/helper_view.dart';

class HelperModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const HelperView(),
          transition: TransitionType.rightToLeft,
          duration: const Duration(milliseconds: 600),
        ),
      ];
}
