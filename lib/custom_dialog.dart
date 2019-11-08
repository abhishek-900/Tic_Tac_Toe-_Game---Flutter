import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actiontext;

  CustomDialog(this.title, this.content, this.callback,
      [this.actiontext = "Reset"]);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        new FlatButton(
          onPressed: callback,
          child: Text(actiontext),
          color: Colors.white,
        )
      ],
    );
  }
}
