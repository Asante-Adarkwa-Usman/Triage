import 'package:flutter/material.dart';
// import 'package:triage/custom_widgets/button/primary_button.dart';
// import 'package:triage/views/appointments/set_appointment_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.3,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(85, 49, 78, 0.81),
          actions: [
            Container(
              margin: const EdgeInsets.only(bottom: 70),
              // alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ],
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                      alignment: Alignment.center,
                      textDirection: TextDirection.rtl,
                      fit: StackFit.loose,
                      clipBehavior: Clip.hardEdge,
                      children: const <Widget>[
                        CircleAvatar(
                          radius: 38,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/noUser.png'),
                        ),
                        Positioned(
                          bottom: -5,
                          right: -6,
                          child: SizedBox(
                            width: 45,
                            height: 45,
                            child: Card(
                              color: Colors.transparent,
                              shape: CircleBorder(
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.camera_alt,
                                  size: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Good evening Dr Hasson Mensah',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ), // ),
    );
  }
}
