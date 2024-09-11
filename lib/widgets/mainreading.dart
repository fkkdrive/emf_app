import 'package:emf_app/models/magnitudeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainReading extends StatefulWidget {
  const MainReading({Key? key}) : super(key: key);

  @override
  _MainReadingState createState() => _MainReadingState();
}

class _MainReadingState extends State<MainReading> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<MagnitudeProvider>(
          builder: (context, model, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.magnitude.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " μTesla",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
