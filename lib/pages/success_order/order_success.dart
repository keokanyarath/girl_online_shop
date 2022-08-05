import '../../core.dart';

class SuccessOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Order",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.orange[400],
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 45.0,
            color: cBlack,
          ),
          onPressed: () {
            Get.toNamed(AppRoutes.REGISTER);
          },
        ),
      ),
      body: Column(children: [
        Center(
          child: SvgPicture.asset("assets/icons/order.svg"),
        ),
        Center(
          child: Text(
            "Thanks for your order!",
            style: TextStyle(
              color: cBlack,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
    );
  }
}
