// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';

// Begin custom action code
Future<bool> saveProfileForm(
  BuildContext context,
  String email,
  String fullname,
  String function,
  String phone,
  List<String> timeSlots,
  String sector1,
  String sector2,
  String sector3,
  String sector4,
) async {
  bool succeed = false;

  await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Profiel opslaan'),
        content: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              Text('Welke flow wil je testen?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Goed'),
            onPressed: () {
              succeed = true;
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Fout'),
            onPressed: () {
              succeed = false;
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
  return Future<bool>.value(succeed);
}
