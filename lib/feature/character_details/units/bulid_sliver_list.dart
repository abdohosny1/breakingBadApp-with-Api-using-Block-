import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../constant/colors.dart';
import '../cubit/character_details_cubit.dart';
import '../../../widget/bulid_divder.dart';
import '../../../widget/character_info.dart';
import '../../../widget/show_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BulidSliverList extends StatelessWidget {
  BulidSliverList(
      {Key? key,
      required this.jops,
      required this.showSeriec,
      required this.seasons,
      required this.status,
      required this.betterCall,
      required this.actors})
      : super(key: key);
  late List<dynamic> jops;
  late List<dynamic> seasons;
  late String showSeriec;
  late String status;
  late String actors;
  late List<dynamic> betterCall;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
      [
        Container(
          margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CharacterInfo(title: "Jop : ", info: jops.join(' / ')),
              //BulidDvider(endIndent: 315),
              CharacterInfo(title: "Appeared In : ", info: showSeriec),
              //BulidDvider(endIndent: 315),
              CharacterInfo(title: "Seasons : ", info: seasons.join(' / ')),
              //BulidDvider(endIndent: 280),
              CharacterInfo(title: "Status : ", info: status),
              // BulidDvider(endIndent: 300),
              betterCall.isEmpty
                  ? Container()
                  : Column(
                      children: [
                        CharacterInfo(
                            title: "Better Call Saul Seasons : ",
                            info: betterCall.join(' / ')),
                        // BulidDvider(endIndent: 150)
                      ],
                    ),
              CharacterInfo(title: "Actors : ", info: actors),
              //  BulidDvider(endIndent: 240),
              const SizedBox(
                height: 20,
              ),

              BlocBuilder<CharacterDetailsCubit, CharacterDetailsState>(
                  builder: (context, state) {
                if (state is QuotesLoaded) {
                  var qutoes = (state).quotes;
                  if (qutoes.length != 0) {
                    int randomQutoeIndex = Random().nextInt(qutoes.length - 1);
                    return Center(
                      child: DefaultTextStyle(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20,
                            color: MyColors.kWhiteColor,
                            shadows: [
                              Shadow(
                                  blurRadius: 7,
                                  color: MyColors.kYellowColor,
                                  offset: Offset(0, 0))
                            ]),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            FlickerAnimatedText(qutoes[randomQutoeIndex].quote),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                } else {
                  return const ShowProgress();
                }
              })
            ],
          ),
        ),
        const SizedBox(
          height: 500,
        )
      ],
    ));
  }
}
