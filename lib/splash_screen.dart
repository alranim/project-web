import 'package:flutter/material.dart';
import 'package:medicine/appcolors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimaryBackGround,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: SizedBox(
                width: double.infinity,
                height: 400,
                child: Image.asset(
                  'assets/splash2.png',
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: const EdgeInsets.only(top: 360),
                  child: Text(
                    'Medication Reminder',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.lightPrimary,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'AutofillHints.countryName',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    'Stay on top of your health regimen with Medication Manager — never miss a dose again!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.lightPrimaryText,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'AutofillHints.email',
                      height: 1.3,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildButtons(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 160,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(AppColors.lightPrimary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: AppColors.lightPrimary, width: 2.0),
                  ),
                ),
              ),
              child: const Text('Log In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
              onPressed: () => Navigator.pushNamed(context, '/login'),
            ),
          ),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Color.fromARGB(255, 78, 110, 141), width: 2.0),
                  ),
                ),
              ),
              child: const Text('Sign up', style: TextStyle(color: Color.fromARGB(255, 78, 110, 141), fontWeight: FontWeight.w800)),
              onPressed: () => Navigator.pushNamed(context, '/sign-up'),
            ),
          ),
        ],
      ),
    );
  }
}
