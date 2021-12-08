import 'package:flutter/material.dart';
import 'package:triage/custom_widgets/button/secondary_button.dart';

class WithdrawView extends StatelessWidget {
  const WithdrawView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.account_balance_wallet,
                  size: 25,
                  color: Color.fromRGBO(206, 93, 29, 1),
                ),
                SizedBox(width: 10),
                Text(
                  'Balance:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'GH₵'
                  '20.00',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(206, 93, 29, 1),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'GH₵ '
                '80.00  '
                'Pending ',
              ),
              Icon(
                Icons.access_time,
                size: 15,
              ),
            ],
          ),
          const SizedBox(height: 30),
          SecondaryButton(
            onPressed: () {},
            buttonText: 'Withdraw',
            buttonColor: const Color.fromRGBO(206, 93, 29, 1),
            width: MediaQuery.of(context).size.width * 0.4,
          ),
          Container(
              color: const Color.fromRGBO(196, 196, 196, 0.2),
              height: 40,
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Text('Status',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      )),
                ],
              )),
          ListTile(
            leading: const Text(
                'GH₵'
                '20.00',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                )),
            title: const Text('Withdrawal Request',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                )),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text('Pending',
                    style: TextStyle(
                      color: Color.fromRGBO(206, 93, 29, 1),
                    )),
                SizedBox(width: 5),
                Icon(
                  Icons.access_time,
                  size: 15,
                  color: Color.fromRGBO(206, 93, 29, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
