import '../../core.dart';

class OnBoardController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
    } else {
      pageController.nextPage(
          duration: 300.milliseconds,
          curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      onBoard_1,
      'Keep a track on your vehicles',
    ),
    OnboardingInfo(
      onBoard_2,
      'Secure your Assets',
    ),
    OnboardingInfo(
      onBoard_3,
      'Help Save Costs',
    )
  ];
}
