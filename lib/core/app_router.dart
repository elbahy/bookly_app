import 'package:bookly_app/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/screens/home_screen.dart';
import 'package:bookly_app/features/splash/presentaion/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(
        path: '/book_details',
        builder: (context, state) => const BookDetailsScreen())
  ]);
}
