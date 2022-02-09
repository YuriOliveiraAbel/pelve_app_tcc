import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/modules/helper/helper_module.dart';
import 'package:pelve_app/app/shared/views/splash_screen.dart';

import 'modules/home/home_module.dart';
import 'modules/treatment/treatment_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const SplashScreen()),
    ModuleRoute('/home/', module: HomeModule()),
    ModuleRoute('/helper/', module: HelperModule()),
    ModuleRoute('/treatment/', module: TreatmentModule()),
  ];
}
