import 'cubit/chartcter_cubit.dart';
import '../../constant/colors.dart';
import '../../data/repostery/character_repostery.dart';
import '../../data/web_servic/characrer_web_servic.dart';
import '../../widget/bulid_app_bar.dart';
import 'units/bulid_block_widget.dart';
import '../../widget/bulid_text_filed.dart';
import '../../widget/bulid_no_internet_widget.dart';
import '../../widget/show_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';

class CharacterView extends StatefulWidget {
  const CharacterView({Key? key}) : super(key: key);

  @override
  State<CharacterView> createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChartcterCubit(CharacterRepository(CharacterswebServices()))
            ..getAllCharacter(),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: BlocBuilder<ChartcterCubit, ChartcterState>(
              builder: (context, state) {
                var cubit = ChartcterCubit.get(context);
                return cubit.isSearch
                    ? AppBar(
                        backgroundColor: MyColors.kYellowColor,
                        title: TextFiledWidegt(
                          controller: cubit.searchControler,
                          serchaCharacter: cubit.addSearchForItem,
                        ),
                        leading: const BackButton(
                          color: MyColors.kGreyColor,
                        ),
                        actions: [cubit.bulidAppbarListWidgetIsSearch(context)],
                      )
                    : AppBar(
                        backgroundColor: MyColors.kYellowColor,
                        title: BulidAppBarWidget(),
                        leading: Container(),
                        actions: [
                          cubit.bulidAppbarListWidgetIsNotSearch(context)
                        ],
                      );
              },
            ),
          ),
          body: OfflineBuilder(
            connectivityBuilder: (
              BuildContext context,
              ConnectivityResult connectivity,
              Widget child,
            ) {
              final bool connected = connectivity != ConnectivityResult.none;
              if (connected) {
                return const BulidBlockWidget();
              } else {
                return BulidNoInternetWidget();
              }
            },
            child: const ShowProgress(),
          )),
    );
  }
}
