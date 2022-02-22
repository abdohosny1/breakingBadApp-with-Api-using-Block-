import '../constant/colors.dart';
import 'package:flutter/material.dart';

class BulidDvider extends StatelessWidget {
  BulidDvider({Key? key, required this.endIndent}) : super(key: key);

  late double endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.kYellowColor,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }
}
