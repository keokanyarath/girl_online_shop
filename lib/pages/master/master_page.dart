import 'package:girl_style_shop/constants.dart';
import 'package:girl_style_shop/provider/cart_p.dart';
import 'package:provider/provider.dart';
import '../../core.dart';

class MasterPage extends StatelessWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWarning2,
      appBar: AppBar(
        backgroundColor: cWarning2,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.SETTINGS);
          },
          icon: SvgPicture.asset("assets/icons/menu.svg", width: 23, color: Colors.grey),
        ),
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
            
        //   ],
        // ),
        actions: [
          Consumer<CartProvider>(
            builder: (context, provider, widget){
              return Stack(
                alignment: Alignment.center,
                children: [

                  IconButton(
                    onPressed: () {
                      if (provider.isAdd == true) provider.isAdd = false;
                      Get.toNamed(AppRoutes.CART_SCREEN);
                    },
                    icon: SvgPicture.asset("assets/icons/cart.svg", width: 23, color: Colors.grey),
                  ),

                  provider.isAdd ? Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red
                      ),
                    ),
                  )
                  : Container()

                ],
              );
            }
          ),

          IconButton(
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
            onPressed: () {
              Get.toNamed(AppRoutes.MASTER);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w500, fontSize: 37, color: cWarning),
            ),
            const SizedBox(height: defaultPadding / 2),
            const Text(
              "best Outfits for you.",
              style: TextStyle(
                fontSize: 15,
                color: cSecondary,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
