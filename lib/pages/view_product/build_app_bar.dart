import '../../core.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: cWarning,
    title: const Text(
      "Dress",
      style: TextStyle(
        color: cWhite,
        fontSize: 25,
      ),
    ),
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: cBlack,
      ),
      onPressed: () {
        Get.toNamed(AppRoutes.MASTER);
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: cWarning,
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.CART_SCREEN);
        },
      ),
    ],
  );
}
