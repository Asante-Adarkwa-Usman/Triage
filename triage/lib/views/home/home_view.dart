import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          title: Container(
            margin: const EdgeInsets.all(40),
            alignment: Alignment.bottomCenter,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
              radius: 30,
              backgroundColor: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.notifications, size: 30, color: Colors.white))
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   physics: NeverScrollableScrollPhysics(),
      //   child: ClipRRect(
      //     borderRadius: const BorderRadius.only(
      //         bottomLeft: Radius.circular(10),
      //         bottomRight: Radius.circular(10)),
      //     child: Container(
      //       color: const Color.fromRGBO(85, 49, 78, 0.81),
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height * 0.15,
      //       child: ListTile(
      //         leading: Container(
      //           alignment: Alignment.center,
      //           child: Flexible(
      //             child: const CircleAvatar(
      //               backgroundColor: Colors.white,
      //               backgroundImage: AssetImage('assets/images/user.png'),
      //               radius: 30,
      //             ),
      //           ),
      //         ),
      //         trailing: const IconButton(
      //             onPressed: null,
      //             icon: Icon(
      //               Icons.notifications,
      //               size: 30,
      //               color: Colors.white,
      //             )),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
