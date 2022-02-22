import '../../../constant/colors.dart';
import '../../../cort/router/router.dart';
import '../cubit/chartcter_cubit.dart';
import 'package:flutter/material.dart';

class BulidAppBarListIsSearch extends StatelessWidget {
  const BulidAppBarListIsSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ChartcterCubit.get(context)..clearControler();
          MagicRouter.pop();
        },
        icon: const Icon(
          Icons.clear,
          color: MyColors.kGreyColor,
        ));
  }
}
