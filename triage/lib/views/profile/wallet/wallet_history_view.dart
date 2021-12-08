import 'package:flutter/material.dart';

class WalletHistoryView extends StatelessWidget {
  const WalletHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 16),
              child: ListTile(
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Withdrawal',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Amount: '
                      'GH₵ '
                      '100.00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                trailing: const Text(
                  '12.12.2020 '
                  '15:00',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
              height: 1, thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.3)),
          itemCount: 4),
    );
  }
}
