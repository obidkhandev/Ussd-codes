import 'package:ussd_code/ui/home/ui/home_page.dart';
import 'package:ussd_code/ui/collections/ui/collections.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class RouteName {
  static const home = "/home";
  static const internetCollections = "/internetCollections";
}

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    // var args = settings.arguments;
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
       case RouteName.internetCollections:
        return MaterialPageRoute(
          builder: (_) => const CollectionsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
