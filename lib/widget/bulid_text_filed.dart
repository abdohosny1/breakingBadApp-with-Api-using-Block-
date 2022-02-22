import '../constant/colors.dart';
import 'package:flutter/material.dart';

class TextFiledWidegt extends StatelessWidget {
  TextFiledWidegt({Key? key, this.serchaCharacter, this.controller})
      : super(key: key);
  TextEditingController? controller;
  void Function(String)? serchaCharacter;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: MyColors.kGreyColor,
      style: const TextStyle(color: MyColors.kGreyColor, fontSize: 18),
      onChanged: serchaCharacter,
      decoration: const InputDecoration(
        hintText: "Find a character.... ",
        border: InputBorder.none,
        hintStyle: TextStyle(color: MyColors.kGreyColor, fontSize: 18),
      ),
    );
  }
}
