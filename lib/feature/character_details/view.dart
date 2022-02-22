import '../../cort/model/characters_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constant/colors.dart';
import 'data/repository/quote_repository.dart';
import 'data/web_service/quotes_wb_service.dart';
import 'cubit/character_details_cubit.dart';
import 'units/bulid_sliver_app_bar.dart';
import 'units/bulid_sliver_list.dart';

class CharacterDetailsView extends StatelessWidget {
  Character character;
  CharacterDetailsView({
    Key? key,
    required this.character,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CharacterDetailsCubit(QuotoRepository(QutoeswebServices()))
            ..getAllQuotesLoaded(character.name),
      child: Scaffold(
        backgroundColor: MyColors.kGreyColor,
        body: CustomScrollView(
          slivers: [
            BulidSliverAppBar(
                nickName: character.nickName,
                id: character.charId,
                image: character.image),
            BulidSliverList(
              jops: character.jobs,
              seasons: character.appearanceOfSeasons,
              status: character.statusIfDeadOrAlive,
              showSeriec: character.categoryForTwoSeries,
              betterCall: character.betterCallSaulAppearance,
              actors: character.acotrName,
            )
          ],
        ),
      ),
    );
  }
}
