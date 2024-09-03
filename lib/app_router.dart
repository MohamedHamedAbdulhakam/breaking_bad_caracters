import 'package:breaking_bad_caracters/constants.dart';
import 'package:breaking_bad_caracters/constants/strings.dart';
import 'package:breaking_bad_caracters/presentation_layer/screens/characters_deatailsa_screen.dart';
import 'package:breaking_bad_caracters/presentation_layer/screens/characters_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case characterScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case charactersDetails:
        return MaterialPageRoute(
            builder: (_) => const CharactersDeatailsaScreen());
    }
  }
}
