
import '../../core.dart';

class OnBoardPage extends StatefulWidget {
  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final _controller = OnBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWarning2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Obx(
                () {
                  return !_controller.isLastPage
                      ? Align(
                          alignment: Alignment.topRight,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              side: const BorderSide(width: 1, color: cR),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Skip',
                              style: subTitleTextStyle(),
                            ),
                          ),
                        )
                      : const SizedBox();
                },
              ),
              PageView.builder(
                  controller: _controller.pageController,
                  onPageChanged: _controller.selectedPageIndex,
                  itemCount: _controller.onboardingPages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            _controller.onboardingPages[index].url!),
                        Text(
                          _controller.onboardingPages[index].text!,
                          style: cLabelTextStyle(),
                        ),
                      ],
                    );
                  }),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Obx(() {
                  return !_controller.isLastPage
                      ? Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              _controller.onboardingPages.length - 1,
                              (index) => Obx(() {
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 250),
                                  margin: const EdgeInsets.all(4),
                                  width: _controller.selectedPageIndex.value ==
                                          index
                                      ? 12.0
                                      : 30.0,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(20)),
                                    color:
                                        _controller.selectedPageIndex.value ==
                                                index
                                            ? cR.withOpacity(0.5)
                                            : cR,
                                    // shape: BoxShape.circle,
                                  ),
                                );
                              }),
                            ),
                          ),
                        )
                      : Align(
                          alignment: Alignment.bottomCenter,
                          child: KVButton(
                            text: 'Let\'s Start',
                            press: () {
                              Get.offAllNamed(AppRoutes.REGISTER);
                            },
                          ),
                        );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
