import 'package:flutter/material.dart';
import 'package:task/models/food_info.dart';

class FCards extends StatelessWidget {
  final FInfo obj;
  FCards(this.obj);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 190,
            width: 200,
            child: Image.asset(obj.addr, width: 150, height: 175),
          ),
          Text(obj.name,
              style: TextStyle(
                fontFamily: 'Mulish',
                height: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${obj.time} min .",
                style: TextStyle(fontFamily: 'Mulish', color: Colors.grey),
              ),
              Text("${obj.rating}",
                  style: TextStyle(fontFamily: 'Mulish', color: Colors.grey)),
            ],
          ),
          Text(
            '\$${obj.cost}',
            style: TextStyle(
              fontFamily: 'Mulish',
              height: 1,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
