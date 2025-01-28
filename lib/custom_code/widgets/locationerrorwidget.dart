// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;

  const LocationErrorWidget({Key? key, this.error, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = SizedBox(height: 32);
    final errorColor = Color(0xffb00020);

    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.location_off,
              size: 150,
              color: errorColor,
            ),
            box,
            Text(
              error!,
              style: TextStyle(color: errorColor, fontWeight: FontWeight.bold),
            ),
            box,
            ElevatedButton(
              child: Text("Retry"),
              onPressed: () {
                if (callback != null) callback!();
              },
            )
          ],
        ),
      ),
    );
  }
}
