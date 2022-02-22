import '../constant/colors.dart';
import 'package:flutter/material.dart';

class ShowProgress extends StatelessWidget {
  const ShowProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: MyColors.kYellowColor,
      ),
    );
  }
}
