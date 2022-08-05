import '../../core.dart';

class KVTextFormField extends StatelessWidget {

  final String? hitText;
  final String? label;
  final bool? obscureText;
  
  const KVTextFormField({
    Key? key,
    this.hitText,
    this.label,
    this.obscureText = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KVLabel(
          text: '$label',
        ),
        TextFormField(
          obscureText: obscureText!,
          decoration: InputDecoration(
            hintText: '$hitText',
          ),
        ),
        const VerticalSpacing()
      ],
    );
  }
}
