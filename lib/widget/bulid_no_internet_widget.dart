import '../constant/colors.dart';
import 'package:flutter/material.dart';

class BulidNoInternetWidget extends StatelessWidget {
  BulidNoInternetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Can`t connect .... check internet",
              style: TextStyle(fontSize: 22, color: MyColors.kGreyColor),
            ),
            Expanded(child: Image.asset("assets/image/no_internet.png")),
          ],
        ),
      ),
    );
  }
}
