import 'package:girl_style_shop/provider/cart_p.dart';
import 'package:provider/provider.dart';

import '../../core.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, provider, widget){
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(05, 10, 0, 0),
              child: SizedBox(
                width: 90.0,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: cWarning,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(provider.demoCarts[0].product.image![0]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product.title!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: cBlack,
                    overflow: TextOverflow.ellipsis
                  ),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: "\$${cart.product.price}",
                    style: const TextStyle(
                      color: cWarning,
                    ),
                    children: [
                      TextSpan(
                        // text: " x${cart.numOfItem}",
                        text: "  x1",
                        style: const TextStyle(
                          color: cBlack,
                        ),
                      )
                    ]
                  ),
                ),
              ],
            ),
          ],
        );
      }
    );
  }
}
