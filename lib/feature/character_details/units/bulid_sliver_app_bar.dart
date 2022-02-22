import '../../../constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BulidSliverAppBar extends StatelessWidget {
  BulidSliverAppBar(
      {Key? key, required this.nickName, required this.id, required this.image})
      : super(key: key);
  late String nickName;
  late int id;
  late String image;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.kGreyColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          nickName,
          style: const TextStyle(color: MyColors.kWhiteColor),
        ),
        background: Hero(
          tag: id,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
