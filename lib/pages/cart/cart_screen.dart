import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:girl_style_shop/components/default_button.dart';
import 'package:girl_style_shop/provider/cart_p.dart';
import 'package:provider/provider.dart';
import '../../core.dart';

class CartSreenPage extends StatelessWidget {

  const CartSreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const BodyPage(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: cWarning,
      leading: IconButton(
        icon: const Icon(
          Icons.chevron_left,
          size: 45.0,
          color: cBlack,
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.MASTER);
        },
      ),
      title: Consumer<CartProvider>(
        builder: (context, provider, widget){
          return Column(
            children: [
              const Text(
                "Your Cart",
                style: TextStyle(color: cBlack),
              ),
              Text(
                "${provider.demoCarts.length} items",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          );
        }
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 30.0,
      ),
      height: 200,
      decoration: BoxDecoration(
          color: cWarning,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 25),
                blurRadius: 20,
                color: Color.fromARGB(252, 222, 92, 92).withOpacity(0.15))
          ]),
      child: Consumer<CartProvider>(
        builder: (context, provider, widget){
          return provider.demoCarts.isEmpty 
          ? Center(
            child: Text(
              "No items",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80.0,
                        width: 80,
                        decoration: BoxDecoration(
                          color: cWhite,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset("assets/images/product_3.png"),
                      ),
                      Expanded(child: Container(),),
                      Text(
                        "Add voucher code",
                        style: TextStyle(
                          fontSize: 18,
                          color: cBlack,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: cBlack,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: "Total:\n",
                          style: TextStyle(
                            fontSize: 18,
                            color: cBlack,
                          ),
                          children: [
                            TextSpan(
                              text: "\$${provider.getTotal()}",
                              style: TextStyle(
                                fontSize: 22,
                                color: cBlack,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 140,
                      child: DefaultButton(
                        text: "Check Out",
                        press: () async {
                          try {

                            final products = FirebaseFirestore.instance.collection('products');
                              
                            provider.toMap();
                            for (int i = 0; i < provider.demoCarts.length; i++){
                              await products.add(provider.lsMap[i]);
                            }

                            await showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Success'),
                                content: const Text('Products successfully order'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ); 
                            provider.demoCarts = [];
                            provider.total = 0;
                            provider.lsMap = [];
                          } catch (e){
                            await showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Oops'),
                                content: const Text('Your order is failed'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ); 
                          }                  
                          // await products.get().then((value){
                          //   print("Product ${value.data()}");

                          // });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
        },
      ),
    );
  }
}
