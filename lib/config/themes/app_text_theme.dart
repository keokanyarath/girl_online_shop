
import '../../core.dart';

var ctx = Get.context;
TextStyle cLabelTextStyle() {
  return TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Get.isDarkMode ? cWhite : cBlack,
  );
}

TextStyle subTitleTextStyle() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}

TextStyle titleTextStyle() {
  return Get.theme.textTheme.subtitle1!.copyWith(
    color: Colors.black,
  );
}
