import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/model/post_model.dart';
import 'package:arkeofili_mobile/route/route_transition.dart';
import 'package:arkeofili_mobile/screen/categories_screen.dart';
import 'package:arkeofili_mobile/screen/detail_screen.dart';
import 'package:arkeofili_mobile/screen/topic_screen.dart';
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
      case "/categories":
        return RouteTransition.fadeTransitionBuilder(child: const CategoriesScreen());
        
      case "/archaeology":
        final Categories categories = settings.arguments as Categories;
        return RouteTransition.fadeTransitionBuilder(child: TopicScreen(categories: categories));
      case "/anthropology":
        final Categories categories = settings.arguments as Categories;
        return RouteTransition.fadeTransitionBuilder(child: TopicScreen(categories: categories));
      case "/palaeontology":
        final Categories categories = settings.arguments as Categories;
        return RouteTransition.fadeTransitionBuilder(child: TopicScreen(categories: categories));
      case "/evolution":
        final Categories categories = settings.arguments as Categories;
        return RouteTransition.fadeTransitionBuilder(child: TopicScreen(categories: categories));
      case "/culturalHeritage":
        final Categories categories = settings.arguments as Categories;
        return RouteTransition.fadeTransitionBuilder(child: TopicScreen(categories: categories));
      case "/specialFile":
        return RouteTransition.fadeTransitionBuilder(child: const MainScreen());
      case "/list":
        final Categories categories = settings.arguments as Categories;
        return RouteTransition.fadeTransitionBuilder(child: TopicScreen(categories: categories));
      
      case "/detail":
        final PostModel postModel = settings.arguments as PostModel;
        return RouteTransition.fadeTransitionBuilder(child: DetailScreen(postModel: postModel));

      default:
        return RouteTransition.fadeTransitionBuilder(child: const MainScreen());
    }
  }
}
