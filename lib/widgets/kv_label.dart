import '../../core.dart';

class KVLabel extends StatelessWidget {
  const KVLabel({
    Key? key,
    @required this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        '$text',
        style: cLabelTextStyle(),
      ),
    );
  }
}
