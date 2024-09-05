import 'constants/strings.dart';
import 'presentation_layer/screens/characters_deatailsa_screen.dart';
import 'presentation_layer/screens/characters_screen.dart';
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
