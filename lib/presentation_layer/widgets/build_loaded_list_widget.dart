import 'package:breaking_bad_caracters/constants/colors.dart';

import 'package:breaking_bad_caracters/presentation_layer/widgets/build_character_list.dart';
import 'package:flutter/material.dart';

class BuildLoadedListWidget extends StatelessWidget {
  const BuildLoadedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: MyColors.grey,
      child: const Column(
        children: [
          BuildCharacterList(),
        ],
      ),
    ));
  }
}
