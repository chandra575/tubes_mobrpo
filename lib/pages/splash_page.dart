import "package:another_flutter_splash_screen/another_flutter_splash_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_tubes_galon/pages/home_page.dart";

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      childWidget: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset("assets/img/logo.png"),
      ),
      backgroundColor: Colors.white,
      nextScreen: HomePage(),
    );
  }
}
