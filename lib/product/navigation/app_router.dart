import 'package:architecture_template/product/navigation/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
/// App router configuration class for the application.
/// Defines the routes and their corresponding views.
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: HomeDetailRoute.page),
  ];
}
