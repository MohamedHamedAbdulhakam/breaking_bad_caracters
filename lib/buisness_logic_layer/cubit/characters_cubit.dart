import 'package:bloc/bloc.dart';
import 'package:breaking_bad_caracters/data_layer/models/characters.dart';
import 'package:breaking_bad_caracters/data_layer/repos/characters_repositry.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersRepositry charactersRepositry;
  late List<Character> characters;
  CharactersCubit(this.charactersRepositry) : super(CharactersInitial());
  List<Character> getAllCharacters() {
    charactersRepositry.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
