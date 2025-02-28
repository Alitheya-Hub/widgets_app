import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentations/screens/screens.dart';



// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    
    GoRoute(
      path: '/buttons',
      builder: (context, state) => ButtonScreen(),
    ),
    
    GoRoute(
      path: '/cards',
      builder: (context, state) => CardsScreen(),
    ),
  ],
);