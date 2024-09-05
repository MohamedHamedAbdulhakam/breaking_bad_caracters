import 'package:breaking_bad_caracters/buisness_logic_layer/cubit/characters_cubit.dart';
import 'package:breaking_bad_caracters/data_layer/repos/characters_repositry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/strings.dart';
import 'presentation_layer/screens/characters_deatailsa_screen.dart';
import 'presentation_layer/screens/characters_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late CharactersRepositry charactersRepositry;
  late CharactersCubit charactersCubit;
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case characterScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CharactersCubit(charactersRepositry),
                  child: const CharactersScreen(),
                ));
      case charactersDetails:
        return MaterialPageRoute(
            builder: (_) => const CharactersDeatailsaScreen());
    }
  }
}
