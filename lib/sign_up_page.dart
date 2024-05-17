import 'package:flutter/material.dart';
import 'package:medicine/appcolors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSecondaryBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.lightPrimaryBackGround,
        iconTheme: const IconThemeData(color: AppColors.lightPrimary),
        title: const Text('Sign Up', style: TextStyle(color: AppColors.lightPrimary),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                  child: Text(
                    "Let's get started ...",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: AppColors.lightPrimaryText,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  autofocus: false,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Mobile',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  autofocus: false,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  autofocus: false,
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                _buildSubmitButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.lightPrimary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: const Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
          onPressed: () => Navigator.pushNamed(context, '/home'),
        ),
      ),
    );
  }
}
