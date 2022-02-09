import 'package:flutter/material.dart';
import 'package:pelve_app/app/shared/utils/constraints.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((time) async {
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, '/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'PELVE APP',
                style: TextStyle(
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.w400,
                  fontSize: 87,
                  color: Colors.white,
                  letterSpacing: 0.35,
                ),
              ),
            ),
            Text(
              'By Manuela Abel',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Oswald",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
