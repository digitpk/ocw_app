import 'package:flutter/material.dart';

class Exit extends StatelessWidget {
  final Function onExit;

  Exit(this.onExit);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Do you want to Quit?'),
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            onExit();
          },
          child: Text('Yes'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No'),
        ),
      ],
    );
  }
}
