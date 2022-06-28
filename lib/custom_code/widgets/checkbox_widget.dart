// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';

// Begin custom widget code
class CheckboxWidget extends StatefulWidget {
  final double width;
  final double height;

  final String name;
  final String checked;

  const CheckboxWidget(
      {Key key, this.width, this.height, this.name, this.checked})
      : super(key: key);

  @override
  State<CheckboxWidget> createState() =>
      _CheckboxWidgetState(name: name, checked: checked);
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  final String name;
  final String checked;
  bool isChecked;

  _CheckboxWidgetState({this.name, this.checked})
      : isChecked = checked == "true";

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
