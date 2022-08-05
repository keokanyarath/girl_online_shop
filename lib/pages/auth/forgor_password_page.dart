import '../../core.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pleas enter your email'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              const KVTextFormField(
                label: "Email",
                hitText: "Name@gmail.com",
              ),
              const VerticalSpacing(),
              KVButton(
                text: 'Send',
                press: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
