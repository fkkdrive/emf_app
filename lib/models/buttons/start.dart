import 'package:emf_app/utils/colors.dart';
import 'package:emf_app/models/magnitudeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Start extends StatelessWidget {
  const Start({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MagnitudeProvider>(
      builder: (context, model, child) => Container(
        width: 200,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(color: Colors.white))),
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
          ),
          onPressed: () {
            model.changeValues();
          },
          child: Text('Start'),
        ),
      ),
    );
  }
}
