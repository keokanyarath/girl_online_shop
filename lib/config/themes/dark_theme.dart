
import '../../core.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.grey[900],
  // fontFamily: "Poppins",
  appBarTheme: darkAppBarTheme(),
  brightness: Brightness.dark,
  textTheme: darkTextTheme(),
  inputDecorationTheme: inputDecorationDarkTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
);

InputDecorationTheme inputDecorationDarkTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: cSecondary),
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

TextTheme darkTextTheme() {
  return const TextTheme(
          // bodyText1: TextStyle(color: cTextSeceondary),
          // bodyText2: TextStyle(color: cTextSeceondary),
          // subtitle1: TextStyle(color: cTextSeceondary),
          )
      .apply(
    fontFamily: 'Poppins',
  );
}

AppBarTheme darkAppBarTheme() {
  return const AppBarTheme(
    color: Colors.black38,
    centerTitle: true,
    elevation: 0,
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: cWhite),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: cWhite,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
