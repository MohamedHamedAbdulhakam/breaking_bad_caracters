// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:breaking_bad_caracters/data_layer/models/characters.dart';
import 'package:breaking_bad_caracters/data_layer/services/characters_web_services.dart';

class CharactersRepositry {
  final CharactersWebServices charactersWebServices;
  CharactersRepositry(
    this.charactersWebServices,
  );
  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices
        .getAllCharacters(); //getAllCharacters from web services
    return characters /* the above*/
        .map((character) => Character /*model*/ .fromJson(character))
        .toList();
  }
}
