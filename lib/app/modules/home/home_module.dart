import 'package:problema_dois_digistarts/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:problema_dois_digistarts/app/modules/home/home_page.dart';
import 'package:problema_dois_digistarts/app/modules/home/pages/splashScreen/splashScreen_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashScreenPage()),
        Router('/home', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
