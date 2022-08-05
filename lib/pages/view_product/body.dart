import '../../core.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5?.copyWith(
              fontWeight: FontWeight.bold,
              color: cBlack,
            ),
          ),
        ),
      ],
    );
  }
}
