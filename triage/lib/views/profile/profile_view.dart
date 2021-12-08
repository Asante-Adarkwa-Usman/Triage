import 'package:flutter/material.dart';
import 'package:triage/custom_widgets/button/secondary_button.dart';
import 'package:triage/views/profile/profile_settings/profile_settings_view.dart';
import 'package:unicons/unicons.dart';

import 'wallet/wallet_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          elevation: 0,
          //leadingWidth: MediaQuery.of(context).size.width,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(85, 49, 78, 0.81),
          title: const Text(
            'Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          ProfileWidget(
            iconName: UniconsLine.wallet,
            text: 'Wallet',
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const WalletView()));
            },
          ),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            indent: 40,
            endIndent: 40,
          ),
          const ProfileWidget(
            iconName: UniconsLine.file_bookmark_alt,
            text: 'Reviews',
            onPressed: null,
          ),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            indent: 40,
            endIndent: 40,
          ),
          const ProfileWidget(
            iconName: UniconsLine.location_pin_alt,
            text: 'Address',
            onPressed: null,
          ),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            indent: 40,
            endIndent: 40,
          ),
          ProfileWidget(
            iconName: UniconsLine.cog,
            text: 'Profile Settings',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfileSettingsView()));
            },
          ),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            indent: 40,
            endIndent: 40,
          ),
          const ProfileWidget(
            iconName: UniconsLine.envelope_open,
            text: 'Contact Us',
            onPressed: null,
          ),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            indent: 40,
            endIndent: 40,
          ),
          const ProfileWidget(
            iconName: UniconsLine.question,
            text: 'About Us',
            onPressed: null,
          ),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            indent: 40,
            endIndent: 40,
          ),
          const SizedBox(height: 30),
          SecondaryButton(
            buttonText: 'Logout',
            buttonColor: const Color.fromRGBO(206, 93, 29, 1),
            onPressed: null,
            width: MediaQuery.of(context).size.width * 0.25,
          ),
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final IconData? iconName;
  final String? text;
  final VoidCallback? onPressed;
  const ProfileWidget(
      {Key? key, required this.iconName, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        leading: SizedBox(
          height: 45,
          width: 45,
          child: Card(
            shape: const CircleBorder(),
            color: const Color.fromRGBO(206, 93, 29, 1),
            child: Icon(
              iconName,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          text.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'Oxygen-Regular',
            color: Color.fromRGBO(0, 0, 0, 0.7),
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Color.fromRGBO(0, 0, 0, 0.7),
        ),
      ),
    );
  }
}
