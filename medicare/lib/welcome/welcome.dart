import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/text_buttons/main_text_button_2.dart';
import 'package:medicare/consult/consult.dart';
import 'package:medicare/appointment/AppointmentPage.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/emergency/emergency.dart';
import 'package:medicare/medical_approval/medical_page.dart';
import 'package:medicare/medicine_shop/shop.dart';
import 'package:medicare/self_checkup/self_checkup.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Welcome'),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'helvetica',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome !\n",
                      style: TextStyle(fontSize: 30, fontFamily: 'helvetica'),
                    ),
                    TextSpan(
                      text: "student_name",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'helvetica',
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          //
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: mainColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Services',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Consult',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DoctorConsultationApp()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Medicine Shop',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Shop()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Emergency',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Emergency()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Medical Approval',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicalPage()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Appointment',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
          ),
          const SizedBox(height: 10),
          MainTextButton2(
            text: 'Self Checkup',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckUpPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
