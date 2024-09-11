import 'package:emf_app/models/buttons/visual.dart';
import 'package:emf_app/models/buttons/start.dart';

import 'package:emf_app/utils/colors.dart';
import 'package:emf_app/widgets/mainreading.dart';
import 'package:emf_app/widgets/meterreading.dart';
import 'package:emf_app/widgets/xyzreading.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainReading(),
              XYZReading(),
              MeterReading(),
              Visual(),
              SizedBox(height: 20),
              Start(),
            ],
          ),
        ),
      ),
    );
  }
}
