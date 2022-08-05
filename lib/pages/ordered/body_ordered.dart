import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:girl_style_shop/constants.dart';
import 'package:girl_style_shop/core.dart';
import 'package:girl_style_shop/pages/details/details_screen.dart';

class OrderedBody extends StatelessWidget {

  final List<Product>? productOrdered;
  
  OrderedBody({Key? key, this.productOrdered}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cWarning,
        title: const Text(
          "Product",
          style: TextStyle(
            color: cWhite,
            fontSize: 25,
          ),
        ),
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: cWhite,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: productOrdered!.isNotEmpty ? ListView.builder(
          itemCount: productOrdered!.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                
                ProductCard(
                  title: productOrdered![index].title!,
                  image: productOrdered![index].image![0],
                  price: productOrdered![index].price!,
                  bgColor: productOrdered![index].bgColor!,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: productOrdered![index], isOrdered: true,),
                      ));
                  },
                ),
      
                SizedBox(height: 10,)
              ],
            );
          }
        ) : 
        Center(
          child: Text("No order", style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),),
        ),
      )
    );
  }
}