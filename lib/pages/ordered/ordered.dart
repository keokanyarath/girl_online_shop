import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:girl_style_shop/core.dart';
import 'package:girl_style_shop/pages/ordered/body_ordered.dart';

class Ordered extends StatefulWidget {
  const Ordered({Key? key}) : super(key: key);

  @override
  State<Ordered> createState() => _OrderedState();
}

class _OrderedState extends State<Ordered> {
  List<Product> _productOrdered = [];

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    print("initData");
    final db = FirebaseFirestore.instance.collection('products');
    await db.get().then((value) {
      print(value.docs);
      _productOrdered = Product().fromFirebase(value.docs);
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrderedBody(productOrdered: _productOrdered));
  }
}
