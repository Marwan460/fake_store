import 'package:fake_store/res/assets_res.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_rating_widget.dart';

class CustomGridViewItem extends StatelessWidget {
  const CustomGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue, width: 1.5),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned.fill(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AssetsRes.TEST),
              const Text("Nike Air Jordon"),
              const Text("Nike shoes flexible for woman lcalkqcqccqcdcdqqccq",maxLines: 1, overflow: TextOverflow.ellipsis,),
              const Text("1,200"),
              const Row(
                children: [
                CustomRatingWidget(),
                Spacer(),
                Icon(FontAwesomeIcons.circlePlus,color: Colors.blue,size: 25,)
              ],)

            ],
          ))
        ]
      ),
    );
  }
}
