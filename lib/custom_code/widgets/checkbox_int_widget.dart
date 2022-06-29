// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';

// Begin custom widget code
class CheckboxIntWidget extends StatefulWidget {
  final double width;
  final double height;

  final String name;
  final int checked;

  const CheckboxIntWidget(
      {Key key, this.width, this.height, this.name, this.checked})
      : super(key: key);

  @override
  State<CheckboxIntWidget> createState() =>
      _CheckboxIntWidgetState(name: name, checked: checked);
}

class _CheckboxIntWidgetState extends State<CheckboxIntWidget> {
  final String name;
  final int checked;
  bool isChecked;

  _CheckboxIntWidgetState({this.name, this.checked}) : isChecked = checked == 1;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(name),
      value: isChecked,
      onChanged: (bool value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
