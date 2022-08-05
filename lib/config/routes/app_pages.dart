import 'package:girl_style_shop/pages/view_product/view_page.dart';
import '../../core.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.WELCOME, page: () => const SplashPage()),
    GetPage(name: AppRoutes.ONBOARD, page: () => OnBoardPage()),
    GetPage(name: AppRoutes.REGISTER, page: () => RegisterPage()),
    GetPage(name: AppRoutes.LOGIN, page: () => const LoginPage()),
    GetPage(
        name: AppRoutes.FORGOTPASSWORD, page: () => const ForgotPasswordPage()),
    GetPage(name: AppRoutes.MASTER, page: () => const MasterPage()),
    GetPage(name: AppRoutes.ALERT, page: () => const AlertPage()),
    GetPage(name: AppRoutes.SETTINGS, page: () => const SettingsPage()),
    GetPage(name: AppRoutes.EDIT_PROFILE, page: () => const EditProfilePage()),
    GetPage(name: AppRoutes.CART_SCREEN, page: () => const CartSreenPage()),
    GetPage(name: AppRoutes.VIEWPRODUCT, page: () => const ViewProductPage()),
    GetPage(name: AppRoutes.SUCCESSORDER, page: () => SuccessOrder()),
  ];
}
