import 'package:flutter/material.dart';
import 'package:triage/custom_widgets/button/primary_button.dart';
import 'package:unicons/unicons.dart';

class ProfileSettingsView extends StatefulWidget {
  const ProfileSettingsView({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsView> createState() => _ProfileSettingsViewState();
}

class _ProfileSettingsViewState extends State<ProfileSettingsView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _currentHospitalController =
      TextEditingController();
  final TextEditingController _hospitalAddressController =
      TextEditingController();
  final TextEditingController _specialityController = TextEditingController();
  final TextEditingController _changePasswordController =
      TextEditingController();

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
              key: _formKey,
              child: Column(
                children: [
                  InputField(
                    controller: _fullNameController,
                    hintText: 'Fullname',
                    icon: Icons.person_outlined,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your fullname';
                      }
                      return null;
                    },
                  ),
                  InputField(
                    controller: _emailController,
                    hintText: 'Email',
                    icon: UniconsLine.envelope,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  InputField(
                    controller: _phoneNumberController,
                    hintText: 'Phone No.(for SMS and Payment)',
                    icon: Icons.phone_android,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
                  InputField(
                    controller: _experienceController,
                    hintText: 'Experience',
                    icon: UniconsLine.schedule,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your experience';
                      }
                      return null;
                    },
                  ),
                  InputField(
                      controller: _sexController,
                      hintText: 'Sex',
                      icon: UniconsLine.user_md,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter your gender';
                        }
                        return null;
                      }),
                  InputField(
                      controller: _currentHospitalController,
                      hintText: 'Current Hospital',
                      icon: UniconsLine.hospital,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter your current hospital';
                        }
                        return null;
                      }),
                  InputField(
                    controller: _hospitalAddressController,
                    hintText: 'Hospital Address',
                    icon: Icons.location_on_outlined,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your hospital address';
                      }
                      return null;
                    },
                  ),
                  InputField(
                    controller: _specialityController,
                    hintText: 'Speciality',
                    icon: UniconsLine.stethoscope,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your speciality';
                      }
                      return null;
                    },
                  ),
                  InputField(
                    controller: _changePasswordController,
                    hintText: 'Change Password',
                    icon: UniconsLine.padlock,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.25,
              ),
              child: PrimaryButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Processing Data'),
                        ),
                      );
                    }
                  },
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
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  const InputField({
    this.hintText,
    this.icon,
    this.controller,
    this.validate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
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
