
import '../../core.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.grey[100],
  // fontFamily: "Poppins",
  appBarTheme: appBarTheme(),
  brightness: Brightness.light,
  textTheme: textTheme(),
  inputDecorationTheme: inputDecorationTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
);

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: cSecondary),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    // contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 15),
    contentPadding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder.copyWith(
      borderSide: const BorderSide(color: cR),
    ),
    border: outlineInputBorder,
    // hintStyle: kHintTextStyle(),
    labelStyle: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
          // bodyText1: TextStyle(color: cTextSeceondary),
          // bodyText2: TextStyle(color: cTextSeceondary),
          // subtitle1: TextStyle(color: cTextSeceondary),
          )
      .apply(
    fontFamily: 'Poppins',
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    centerTitle: true,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: cBlack,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
