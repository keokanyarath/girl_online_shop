// import '../../core.dart';

// class RegisterPage extends StatelessWidget {
//   const RegisterPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: cWhite,
//       appBar: AppBar(
//         title: const Text('Register',
//         style: TextStyle(
//           color: cBlack,
//           fontSize: 25,
//         ),
//         ),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(kDefaultPadding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Column(
//                   children: [
//                     const KVTextFormField(
//                       label: 'Name',
//                       hitText: 'Your Name',
//                     ),
//                     const KVTextFormField(
//                       label: 'Email',
//                       hitText: 'name@gamil.com',
//                     ),
//                     const KVTextFormField(
//                       label: 'Password',
//                       hitText: '******',
//                     ),
//                     const KVTextFormField(
//                       label: 'Confirm Password',
//                       hitText: '*****',
//                     ),
//                     const VerticalSpacing(),
//                     KVButton(
//                       text: 'Register',
//                       press: () {
//                         Get.offAllNamed(AppRoutes.MASTER);
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Already have account?',
//                     style: TextStyle(
//                       color: cSecondary,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Get.offNamed(AppRoutes.LOGIN);
//                     },
//                     child: const Text(
//                       'Log In',
//                       style: TextStyle(
//                         color: cR,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
