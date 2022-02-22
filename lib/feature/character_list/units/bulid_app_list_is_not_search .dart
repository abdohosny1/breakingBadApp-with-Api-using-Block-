import '../../../constant/colors.dart';
import '../../../cort/router/router.dart';
import '../cubit/chartcter_cubit.dart';
import 'package:flutter/material.dart';

class BulidAppBarListIsNotSearch extends StatelessWidget {
  const BulidAppBarListIsNotSearch({Key? key}) : super(key: key);

  @override
  Widget build(_) {
    var cubit = ChartcterCubit.get(_);
    return IconButton(
        onPressed: () {
          ModalRoute.of(_)?.addLocalHistoryEntry(
              LocalHistoryEntry(onRemove: cubit.stopSearch));

          cubit.isSearch = true;
          //  emit(ChangeSearchCharcter());
        },
        icon: const Icon(
          Icons.search,
          color: MyColors.kGreyColor,
        ));
  }
}
