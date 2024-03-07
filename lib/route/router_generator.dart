import 'package:arkeofili_mobile/route/route_transition.dart';
import 'package:arkeofili_mobile/screen/main_screen.dart';
import 'package:arkeofili_mobile/screen/home_screen.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route routePath(RouteSettings settings) {
    switch (settings.name) {
      case "/main":
        return RouteTransition.fadeTransitionBuilder(child: const MainScreen());
      case "/home":
        return RouteTransition.fadeTransitionBuilder(child: const HomeScreen());
      case "/answers":
        return RouteTransition.fadeTransitionBuilder(child: const HomeScreen()); //!
      //case "/anthropology":
      //   return RouteTransition.fadeTransitionBuilder(child: const AnthropologyScreen());
      // case "/archaeology":
      //   return RouteTransition.fadeTransitionBuilder(child: const ArchaelogyScreen());
      // case "/culturalHeritage":
      //   return RouteTransition.fadeTransitionBuilder(child: const CulturalScreen());
      // case "/evolution":
      //   return RouteTransition.fadeTransitionBuilder(child: const EvolutionScreen());
      // case "/list":
      //   return RouteTransition.fadeTransitionBuilder(child: const HomeScreen()); //!
      // case "/palaeontology":
      //   return RouteTransition.fadeTransitionBuilder(child: const PalaeontologyScreen());
      // case "/specialFile":
      //   return RouteTransition.fadeTransitionBuilder(child: const HomeScreen()); //!
      // case "/detail":
      //   final PostModel post = settings.arguments as PostModel;
      //   return RouteTransition.fadeTransitionBuilder(child: GlobalDetailScreen(post: post));

      default:
        return RouteTransition.fadeTransitionBuilder(child: const HomeScreen());
    }
  }
}
