import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:triage/custom_widgets/available_days_view.dart';
import 'package:triage/custom_widgets/available_time_view.dart';
import 'package:triage/custom_widgets/centered_text_view.dart';

class SetAppointmentView extends StatelessWidget {
  const SetAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            'Set Appointment',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const CenteredText(
              text: 'Select available days within the week',
            ),
            const SizedBox(height: 10),
            const AvailableDays(),
            const AvailableTime(),
            const SizedBox(height: 15),
            const CenteredText(
              text: 'Set rate',
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Per 30 minutes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const CenteredText(
              text: 'GH₵ 10 minimum',
            ),
          ],
        ),
      ),
    );
  }
}
