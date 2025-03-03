import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentations/screens/screens.dart';



// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    
    GoRoute(
      path: '/buttons',
      name: ButtonScreen.name,
      builder: (context, state) => ButtonScreen(),
    ),
    
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackBarScreen.name,
      builder: (context, state) => SnackBarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => UiControlsScreen(),
    ),
  ],
);