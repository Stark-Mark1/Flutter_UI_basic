import 'package:flutter/material.dart';

class RButton extends StatelessWidget {
  final String bText;
  final bool isColored;
  final Function bFunc;
  RButton({
    this.bText,
    this.isColored = false,
    this.bFunc,
  });
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
        bottom: 15,
        left: 10,
      ),
      child: RaisedButton(
          elevation: 0.0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            bFunc(bText);
          },
          padding: EdgeInsets.all(0),
          child: isColored
              ? Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.green,
                          Colors.limeAccent.shade700,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 100.0, minHeight: 52.0),
                    alignment: Alignment.center,
                    child: Text(
                      bText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 17.5),
                    ),
                  ),
                )
              : Text(bText, style: TextStyle(color: Colors.grey))),
    );
  }
}
