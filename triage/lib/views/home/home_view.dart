import 'package:flutter/material.dart';
import 'package:triage/views/home/appointment_request_view.dart';
import 'package:triage/views/home/previous_appointment_view.dart';
import 'package:triage/views/home/upcoming_appointment_view.dart';
// import 'package:triage/custom_widgets/button/primary_button.dart';
// import 'package:triage/views/appointments/set_appointment_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final TabController _tabController;
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
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            RichText(
              text: const TextSpan(
                text: 'You have 3 ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Patients',
                      style: TextStyle(color: Color.fromRGBO(206, 93, 29, 1))),
                  TextSpan(text: ' today!'),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                const Text(
                  'Total Earnings',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'GH₵ 1500',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey[300],
                ),
              ],
            ),
            const SizedBox(height: 50),
            const TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Upcoming Appointments',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(206, 93, 29, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    ' Appointment Requests',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(206, 93, 29, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    'Previous Appointments',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(206, 93, 29, 1)),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  UpcomingAppointmentView(),
                  AppointmentRequestView(),
                  PreviousAppointmentView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
