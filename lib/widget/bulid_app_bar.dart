import '../constant/colors.dart';
import 'package:flutter/material.dart';

class BulidAppBarWidget extends StatelessWidget {
  BulidAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Character',
      style: TextStyle(color: MyColors.kGreyColor),
    );
  }
}
