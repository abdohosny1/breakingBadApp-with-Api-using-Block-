import '../cubit/chartcter_cubit.dart';
import '../../../constant/colors.dart';
import '../../../cort/router/router.dart';
import '../../../data/model/characters_model.dart';
import '../../character_details/view.dart';
import 'bulid_loaded_widget.dart';
import 'package:flutter/material.dart';

class BulidItemCharacterWidget extends StatelessWidget {
  Character character;
  BulidItemCharacterWidget({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(4),
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      decoration: BoxDecoration(
          color: MyColors.kWhiteColor, borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () =>
            MagicRouter.navigateTo(CharacterDetailsView(character: character)),
        child: GridTile(
          child: Hero(
            tag: character.charId,
            child: Container(
                color: MyColors.kGreyColor,
                child: character.image.isNotEmpty
                    ? FadeInImage.assetNetwork(
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        placeholder: "assets/image/loading.gif",
                        image: character.image)
                    : Image.asset("assets/image/placeholder.png")),
          ),
          footer: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text(
              character.name,
              style: const TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: MyColors.kWhiteColor,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
