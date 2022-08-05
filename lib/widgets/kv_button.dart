import 'package:flutter/cupertino.dart';

import '../../core.dart';

class KVButton extends StatelessWidget {
  const KVButton({
    Key? key,
    @required this.text,
    @required this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        color: cR,
        onPressed: press,
        child: Text("$text"),
      ),
    );
  }
}
