import '../core.dart';

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key? key,
    this.of = 20,
  }) : super(key: key);
  final double? of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: of,
    );
  }
}

const double kDefaultPadding = 20.0;
