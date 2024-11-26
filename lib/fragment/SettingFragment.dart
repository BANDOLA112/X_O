import 'package:flutter/material.dart';
import 'package:to_do_app/Theming/theming.dart';

class Settingfragment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            color: Themingcolors.containerColor,
            child: Text('Settings',
              style:TextStyle(
                color: Themingcolors.whiteFontColor,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ) ,),
          ),

        ],
      ),
    );
  }
}
