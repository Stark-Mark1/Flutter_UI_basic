import 'package:flutter/material.dart';
import 'package:task/page_2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            'assets/page1_image.png',
            // color: Colors.white.withOpacity(0.5),
            // colorBlendMode: BlendMode.softLight,
          ),
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
            top: 100,
            bottom: 0,
            left: 25,
            right: 25,
          ),
          height: 400,
        ),
        Container(
          width: double.infinity,
          height: 100,
          child: Text(
            'Fastest food \n delivery to your door',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Mulish',
              height: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 50,
          child: Text(
            'We will deliver you food as quickly and\nqualitatively as possible ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Mulish',
              height: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 17.5,
              color: Colors.grey.shade400,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 75,
            bottom: 75,
          ),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
            padding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(75.0)),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.limeAccent.shade700,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(28.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 280.0, minHeight: 52.0),
                alignment: Alignment.center,
                child: Text(
                  "Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 17.5),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
