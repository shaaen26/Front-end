
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          var yellow;
          final snackBar = SnackBar(
            content: Text("Yessssssss!"),
            backgroundColor: Colors.tealAccent.shade700,
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },

        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration:BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(20.0)
          ),
          child:Text("CLICK ME!"),
        )
    );
  }
}