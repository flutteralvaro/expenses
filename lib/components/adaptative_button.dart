import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({
    this.label,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS == false
        ? CupertinoButton(
            color: Theme.of(context).primaryColor,
            child: Text(label),
            onPressed: onPressed,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
            child: Text(label),
            onPressed: onPressed,
          );
  }
}
