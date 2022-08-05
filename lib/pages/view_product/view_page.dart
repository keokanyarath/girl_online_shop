import '../../core.dart';

class ViewProductPage extends StatelessWidget {
  const ViewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: BodyPage());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: cWarning,
      elevation: 0,
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
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: cWhite,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: cWhite,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
