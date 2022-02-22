import '../cubit/chartcter_cubit.dart';
import '../../../constant/colors.dart';
import '../../../data/model/characters_model.dart';
import 'bulid_item_character.dart';
import 'package:flutter/material.dart';

class BulidLoadedWidget extends StatelessWidget {
  BulidLoadedWidget(
      {Key? key,
      required this.all,
      required this.search,
      required this.check,
      this.test})
      : super(key: key);
  late List<Character> all;
  late List<Character> search;
  late TextEditingController check;
  String? test;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: MyColors.kGreyColor,
        child: Column(
          children: [
            GridView.builder(
                itemCount: check.text.isEmpty
                    ? // check!.text.isEmpty ?
                    all.length
                    : search.length,
                //: search.length,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) {
                  return BulidItemCharacterWidget(
                    character: check.text.isEmpty
                        ? //check!.text.isEmpty ?
                        all[index]
                        : search[index],
                    //: search[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
