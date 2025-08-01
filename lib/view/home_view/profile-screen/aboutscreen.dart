import 'package:flutter/material.dart';
import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/password-feild.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/components/textfield.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController checkPasswordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();

  // User info controllers (readonly fields)
  final TextEditingController nameController = TextEditingController(text: 'Russell Austin');
  final TextEditingController emailController = TextEditingController(text: 'russell.partner@gmail.com');
  final TextEditingController phoneController = TextEditingController(text: '+1 202 555 0142');

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: BlackTextWidget(
          text: 'About Me',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppIcons.backicon, color: AppColors.blackColor),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlackTextWidget(
                text: 'Personal Details',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              const SizedBox(height: 20),

              // Name
              TextFeildWidget(
                hintext: 'Full Name',
                prefixIcons: Icons.account_circle_outlined,textInputType: TextInputType.text,
                controller: nameController,
                color: AppColors.whiteColor,
              //  readOnly: true,
              ),
              const SizedBox(height: 15),

              // Email
              TextFeildWidget(
                hintext: 'Email Address',
                textInputType: TextInputType.emailAddress,
                prefixIcons: Icons.email_outlined,
                controller: emailController,
                color: AppColors.whiteColor,
                //: true,
              ),
              const SizedBox(height: 15),

              // Phone
              TextFeildWidget(
                hintext: 'Phone Number',textInputType: TextInputType.number,
                prefixIcons: Icons.phone,
                controller: phoneController,
                color: AppColors.whiteColor,
                //readOnly: true,
              ),
              const SizedBox(height: 30),

              BlackTextWidget(
                text: 'Change Password',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 10),

              // Current password
              TextFeildWidget(
                hintext: 'Current Password',
                prefixIcons: Icons.lock_outline,
                controller: passwordController,
                color: AppColors.whiteColor,
              ),

              // New password
              PasswordWidget(
                hintext: 'New Password',
                prefixIcons: Icons.lock_outline,
                controller: checkPasswordController,
              ),

              // Confirm password
              TextFeildWidget(
                hintext: 'Confirm Password',
                prefixIcons: Icons.lock_outline,
                controller: passwordConfirmController,
                color: AppColors.whiteColor,
              ),

              const SizedBox(height: 40),
              GreenTextButton(
                text: 'Save Settings',
                ontap: () {
                  // TODO: Add save logic
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
