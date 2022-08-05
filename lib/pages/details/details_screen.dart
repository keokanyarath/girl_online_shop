import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:girl_style_shop/constants.dart';
import 'package:girl_style_shop/core.dart';
import 'package:girl_style_shop/provider/cart_p.dart';
import 'package:provider/provider.dart';
import '../../config/export.dart';
import '../../models/product.dart';
import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {

  final bool? isOrdered;

  const DetailsScreen({Key? key, required this.product, this.isOrdered = false}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: cWarning,
        title: const Text(
          "Product Details",
          style: TextStyle(
            color: cWhite,
            fontSize: 25,
          ),
        ),
        leading: const BackButton(color: Colors.black),
        actions: [
          isOrdered == false ? IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: cWhite,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          ) : Container()
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image![0],
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding * 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: cWarning,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title!,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      product.description!,
                    ),
                  ),
                  Text(
                    "Colors",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: const [
                      ColorDot(
                        color: Color(0xFFBEE8EA),
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color(0xFF141B4A),
                        isActive: true,
                      ),
                      ColorDot(
                        color: Color(0xFFF4E5C3),
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  isOrdered == false ? Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false).isAdd = true;
                          Provider.of<CartProvider>(context, listen: false).demoCarts.add(Cart(product: product ));
                          final snackBar = SnackBar(
                            content: Text('Item ${product.title} is add'),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Provider.of<CartProvider>(context, listen: false).notifyListeners();
                          // Get.toNamed(AppRoutes.CART_SCREEN);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: const StadiumBorder()),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  ) : Container()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
