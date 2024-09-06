import 'package:breaking_bad_caracters/buisness_logic_layer/cubit/characters_cubit.dart';
import 'package:breaking_bad_caracters/constants/colors.dart';
import 'package:breaking_bad_caracters/data_layer/models/characters.dart';
import 'package:breaking_bad_caracters/presentation_layer/widgets/build_loaded_list_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.grey,
        title: const Text('Breaking Bad Characters'),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
          builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = state.characters;
          return const BuildLoadedListWidget();
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: MyColors.yellow,
            ),
          );
        }
      }),
    );
  }
}
