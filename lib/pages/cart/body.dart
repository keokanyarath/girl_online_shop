import 'package:girl_style_shop/provider/cart_p.dart';
import 'package:provider/provider.dart';

import '../../core.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, provider, widget){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
            itemCount: provider.demoCarts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Dismissible(
                onDismissed: (DismissDirection direction){
                  print("Hello ${direction.index}");
                  if (direction.index == 2) {
                    provider.demoCarts.removeAt(index);
                    provider.notifyListeners();
                  }
                },
                // key: Key(provider.demoCarts[0].product.id.toString()),
                key: Key(index.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  decoration: BoxDecoration(color: cWarning, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset("assets/icons/menu.svg"),
                    ],
                  ),
                ),
                // onDismissed: (direction) {
                //   setState(() {
                //     // ignore: list_remove_unrelated_type
                //     demoCarts.remove(index);
                //   });
                // },
                child: CartItemCard(cart: provider.demoCarts[index]),
              ),
            ),
          ),
        );
      }
    );
  }
}
