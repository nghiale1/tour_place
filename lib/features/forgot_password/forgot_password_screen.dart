import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_place/features/auth/verify_otp_screen.dart';
import 'package:tour_place/features/common/custom_appbar.dart';

import '../common/custom_button.dart';
import 'components/phone_input.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String phoneNumber = '';
  bool isPhoneValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: CustomAppbar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios)),
          title: 'Forgot Password',
          actions: null),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 50, 38, 94),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/forgot_password.svg',
                width: 224,
                height: 215,
              ),
              const SizedBox(height: 67),
              Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: const Color(0xFF2A2A2A),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.24,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                "Don't worry! it happens. Please enter phone number associated with your account",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF696969),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.14,
                    ),
              ),
              const SizedBox(height: 64),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your mobile number',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF2A2A2A),
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              const SizedBox(height: 8),
              PhoneInput(
                onPhoneChanged: (phone) {
                  setState(() {
                    phoneNumber = phone;
                    print(phoneNumber);
                  });
                },
                onPhoneValidationChanged: (isValid) {
                  setState(() {
                    isPhoneValid = isValid;
                  });
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    if (isPhoneValid && phoneNumber.isNotEmpty) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => VerifyOtpScreen(
                          phoneNumber: phoneNumber,
                          isResetPass: true,
                        ),
                      ));
                    }
                  },
                  text: 'Send OTP Code',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
