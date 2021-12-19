import 'package:flutter/material.dart';
import 'package:triage/custom_widgets/button/primary_button.dart';
import 'package:unicons/unicons.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(85, 49, 78, 0.81),
          title: const Text(
            'Profile Settings',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Column(
                children: const [
                  InputField(
                    hintText: 'Fullname',
                    icon: Icons.person_outlined,
                  ),
                  InputField(
                    hintText: 'Email',
                    icon: UniconsLine.envelope,
                  ),
                  InputField(
                    hintText: 'Phone No.(for SMS and Payment)',
                    icon: Icons.phone_android,
                  ),
                  InputField(
                    hintText: 'Experience',
                    icon: UniconsLine.schedule,
                  ),
                  InputField(
                    hintText: 'Sex',
                    icon: UniconsLine.user_md,
                  ),
                  InputField(
                      hintText: 'Current Hospital', icon: UniconsLine.hospital),
                  InputField(
                    hintText: 'Hospital Address',
                    icon: Icons.location_on_outlined,
                  ),
                  InputField(
                    hintText: 'Speciality',
                    icon: UniconsLine.stethoscope,
                  ),
                  InputField(
                    hintText: 'Change Password',
                    icon: UniconsLine.padlock,
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.25,
              ),
              child: PrimaryButton(
                  onPressed: () {},
                  buttonText: 'Save',
                  buttonColor: const Color.fromRGBO(206, 93, 29, 1)),
            ),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  const InputField({
    this.hintText,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(
          icon,
          color: const Color.fromRGBO(206, 93, 29, 1),
          size: 30,
        ),
        labelText: hintText.toString(),
        labelStyle: const TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.3),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, .6),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
