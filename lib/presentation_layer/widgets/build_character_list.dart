import 'package:breaking_bad_caracters/presentation_layer/widgets/character_item.dart';
import 'package:flutter/material.dart';

class BuildCharacterList extends StatelessWidget {
  const BuildCharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return const CharacterItem();
      },
    );
  }
}
