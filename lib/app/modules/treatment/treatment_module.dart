import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/modules/treatment/treatment_view.dart';

class TreatmentModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const TratmentView(),
          transition: TransitionType.rightToLeft,
        ),
      ];
}
