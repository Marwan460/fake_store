import 'package:fake_store/features/home/data/models/data_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_rating_widget.dart';

class CustomGridViewItem extends StatelessWidget {
  final ProductModel productModel;
  const CustomGridViewItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue, width: 1.5),
      ),
      child: Stack(children: [
        Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        Image.network(productModel.image!,height: 90,fit: BoxFit.contain,),
        Text(productModel.title!,maxLines: 1, overflow: TextOverflow.ellipsis,),
        Text(
          productModel.description!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(productModel.price.toString()),
         Row(
          children: [
            CustomRatingWidget(rating: productModel.rating!.rate.toString()),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.circlePlus,
              color: Colors.blue,
              size: 25,
            )
          ],
        )
                  ],
                ),
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
      ]),
    );
  }
}
