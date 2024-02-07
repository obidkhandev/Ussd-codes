import 'package:ussd_code/ui/home/ui/home_page.dart';
import 'package:ussd_code/ui/collections/ui/internet_collections.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class RouteName {
  static const home = "/home";
  static const internetCollections = "/internetCollections";
}

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
       case RouteName.internetCollections:
        return MaterialPageRoute(
          builder: (_) => const InternetCollectionsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
