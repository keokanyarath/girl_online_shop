import 'package:firebase_core/firebase_core.dart';
import 'package:girl_style_shop/provider/cart_p.dart';
import 'package:provider/provider.dart';

import 'core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  var initialRoute = await AppRoutes.initailRoutes;
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(create: (context) => CartProvider())
      ],
      child: MyApp(
        initialRoute: initialRoute,
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  
  final String? initialRoute;
  const MyApp({this.initialRoute});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
