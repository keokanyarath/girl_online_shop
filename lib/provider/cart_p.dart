import 'package:girl_style_shop/core.dart';

class CartProvider extends ChangeNotifier{
  
  bool isAdd = false;

  double total = 0;
  List<Map<String, dynamic>> lsMap = [];

  List<Cart> demoCarts = [
    // Cart(product: demoProducts[0], numOfItem: 2),
    // Cart(product: demoProducts[1], numOfItem: 1),
    // Cart(product: demoProducts[3], numOfItem: 1),
  ];

  double getTotal(){
    total = 0;
    for (int i = 0; i < demoCarts.length; i++) {
      total += demoCarts[i].product.price!;
    }
    print("getTotal $total");
    return total;
  }
 
  String toMap(){
    print("toMap $demoCarts");
    lsMap = [];
    
    for(int i=0; i < demoCarts.length; i++) {
      lsMap.add({
        "id": demoCarts[i].product.id,
        "image": demoCarts[i].product.image,
        "title": demoCarts[i].product.title,
        "price": demoCarts[i].product.price,
        "description": demoCarts[i].product.description,
        "bgColor": demoCarts[i].product.bgColor!.value,
      });
    }
    
    return lsMap.toString();
  }
}