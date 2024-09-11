import 'package:auto_size_text/auto_size_text.dart';
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
              AutoSizeText(
                model.magnitude.toStringAsFixed(2),
                key: GlobalKey(debugLabel: 'unit'),
                overflow: TextOverflow.ellipsis,
                maxFontSize: 20,
                maxLines: 1,
                minFontSize: 15,
                style: TextStyle(fontSize: 20, color: Colors.yellow),
              ),
              AutoSizeText(
                " μTesla",
                key: GlobalKey(debugLabel: 'unit'),
                overflow: TextOverflow.ellipsis,
                maxFontSize: 20,
                maxLines: 1,
                minFontSize: 15,
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ],
          ),
        )
      ],
    );
  }
}
