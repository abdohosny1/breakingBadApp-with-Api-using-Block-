import '../cubit/chartcter_cubit.dart';
import '../../../constant/colors.dart';
import 'bulid_loaded_widget.dart';
import '../../../widget/show_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BulidBlockWidget extends StatelessWidget {
  const BulidBlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChartcterCubit, ChartcterState>(
        builder: (context, state) {
      var cubit = ChartcterCubit.get(context);
      if (state is ChartcterLoaded) {
        cubit.allCharacters = state.character;
        return BulidLoadedWidget(
          all: cubit.allCharacters,
          check: cubit.searchControler,
          search: cubit.searchList,
        );
      } else {
        return const ShowProgress();
      }
    });
  }
}
