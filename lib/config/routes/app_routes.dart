class AppRoutes {
  static Future<String> get initailRoutes async {
    return WELCOME;
  }

  static const WELCOME = '/';
  static const ONBOARD = '/onboard';
  static const REGISTER = '/auth/register';
  static const LOGIN = '/auth/login';
  static const FORGOTPASSWORD = '/auth/forgot-password';
  static const MASTER = '/master';
  static const ALERT = '/alert';
  static const SETTINGS = '/settings';
  static const EDIT_PROFILE = '/settings/edit-profile';
  static const CART_SCREEN = '/cart';
  static const VIEWPRODUCT = '/pages.view_product';
  static const SUCCESSORDER = '/pages.success_order';
}
