import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/login/login_store.dart';

class AppModule extends Module {
  static const routeHome = '/home/';
  @override
  void binds(i) {
    i.add(LoginStore.new);
  }

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: LoginModule());
    r.module(routeHome, module: HomeModule());
  }
}
