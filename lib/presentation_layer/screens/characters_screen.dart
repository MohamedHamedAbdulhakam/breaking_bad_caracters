import 'package:breaking_bad_caracters/buisness_logic_layer/cubit/characters_cubit.dart';
import 'package:breaking_bad_caracters/data_layer/models/characters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
  //I convert to statefulWidget because we use blocProvider
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacters;
  @override
  void initState() {
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('hello mohamed'),
    );
  }
}
