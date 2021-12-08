import 'package:flutter/material.dart';
import 'package:triage/views/profile/wallet/wallet_history_view.dart';
import 'package:triage/views/profile/wallet/withdraw_view.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          //leadingWidth: MediaQuery.of(context).size.width,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(85, 49, 78, 0.81),
          title: const Text(
            'Wallet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: const <Widget>[
            TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Withdraw',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Oxygen-Regular',
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(206, 93, 29, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    ' Wallet History',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Oxygen-Regular',
                        color: Color.fromRGBO(206, 93, 29, 1)),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  WithdrawView(),
                  WalletHistoryView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
