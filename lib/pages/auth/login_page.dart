import '../../core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(
            // color: cWarning,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.orange[400],
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 45.0,
            color: cBlack,
          ),
          onPressed: () {
            Get.toNamed(AppRoutes.REGISTER);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const KVTextFormField(
                        label: 'Phone',
                        hitText: 'Number Phone',
                        obscureText: false,
                      ),
                      const KVTextFormField(
                        label: 'Password',
                        hitText: 'Your Password',
                      ),
                      KVButton(
                        text: 'Login',
                        press: () {
                          Get.toNamed(AppRoutes.MASTER);
                        },
                      ),
                      const VerticalSpacing(),
                      SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.FORGOTPASSWORD);
                          },
                          child: Text(
                            'Forget password?',
                            style: titleTextStyle(),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
