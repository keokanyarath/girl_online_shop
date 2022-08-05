String getIconPath(String fileName) {
  return iconAssetRoot + fileName;
}

String getImagePath(String fileName) {
  return imageAssetRoot + fileName;
}

const String imageAssetRoot = 'assets/images/';
const String iconAssetRoot = 'assets/icons/';

final String logo = getIconPath('logo.svg');
final String onBoard_1 = getImagePath("onboart_nline_shopping.svg");
final String onBoard_2 = getImagePath("onboart_shopping.svg");
final String onBoard_3 = getImagePath('onbort_undraw_nature.svg');



