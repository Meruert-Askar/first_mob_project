import 'package:flutter/material.dart';
import 'package:mob_app_flutter/core/constants/app_assets.dart';
import 'package:mob_app_flutter/widgets/icon_text_row.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF12AA73), Color(0xFF135B46)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Smartr",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 24),

              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  width: 200,
                  height: 211,
                  child: Image.asset(
                    AppAssets.signupMan,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                "Fresh look, same login.",
                style: TextStyle(
                  color: Color(0xFFF4F4F4),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 32),

              const IconTextRow(
                assetPath: AppAssets.logInIcon,
                text: "SmartRecruiters candidate portal is now Smartr.",
              ),
              const SizedBox(height: 16),
              const IconTextRow(
                assetPath: AppAssets.switchIcon,
                text: "Enter the same login info used for your SmartrProfile.",
              ),
              const SizedBox(height: 16),
              const IconTextRow(
                assetPath: AppAssets.refreshIcon,
                text: "If login details were saved, you may need to re-save.",
              ),
              const SizedBox(height: 32),

              const Text(
                "Why Smartr? Read here",
                style: TextStyle(
                  color: Colors.white70,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/jobs");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF8FDF1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Color(0xFF135B46),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
