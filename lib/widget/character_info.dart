import '../constant/colors.dart';
import 'package:flutter/material.dart';

class CharacterInfo extends StatelessWidget {
  CharacterInfo({Key? key, required this.title, required this.info})
      : super(key: key);
  late String title;
  late String info;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                    text: title,
                    style: const TextStyle(
                      color: MyColors.kWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                TextSpan(
                  text: info,
                  style: const TextStyle(
                    color: MyColors.kWhiteColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: MyColors.kYellowColor,
            height: 30,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
