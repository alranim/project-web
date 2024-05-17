import 'package:flutter/material.dart';
import 'package:medicine/appcolors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSecondaryBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.lightPrimaryBackGround,
        iconTheme: const IconThemeData(color: AppColors.lightPrimary),
        title: const Text('Log In', style: TextStyle(color: AppColors.lightPrimary),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Log in',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: AppColors.lightPrimaryText,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    hintText: '+966',
                    hintStyle:
                        const TextStyle(color: AppColors.lightSecondaryText),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              _buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
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
            'Log In',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
          onPressed: () => Navigator.pushNamed(context, '/home'),
        ),
      ),
    );
  }
}
