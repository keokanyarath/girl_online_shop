import 'package:flutter/cupertino.dart';
import 'package:girl_style_shop/constants.dart';
import 'package:girl_style_shop/pages/master/components/product_card.dart';
import 'package:girl_style_shop/pages/master/components/section_title.dart';
import '../../../models/product.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Popular",
            pressSeeAll: () {
            },
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                    right: defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title!,
                  image: demo_product[index].image![0],
                  price: demo_product[index].price!,
                  bgColor: demo_product[index].bgColor!,
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
