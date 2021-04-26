import 'package:flutter/material.dart';
import 'package:task/models/food_info.dart';
import 'package:task/widgets/food_cards.dart';
import 'widgets/r_scroll_buttons.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  var button_state = {
    'Popular': false,
    'Salmon': false,
    'Rice': false,
    'Caviar': false,
    'Shrimp': false,
    'Noodles': false,
  };
  List<FCards> fcardList = [
    FCards(
      FInfo(
          addr: 'assets/sushi_caviar.png',
          name: 'Sushi Caviar',
          time: 50,
          rating: 4.8,
          cost: 12.99),
    ),
    FCards(
      FInfo(
          addr: 'assets/sushi_salmon.png',
          name: 'Sushi Salmon',
          time: 50,
          rating: 4.8,
          cost: 12.99),
    ),
    FCards(
      FInfo(
          addr: 'assets/sushi_shrimp.png',
          name: 'Sushi Shrimp',
          time: 50,
          rating: 4.8,
          cost: 12.99),
    ),
  ];
  void changeClr(key) {
    setState(() {
      button_state = {
        'Popular': false,
        'Salmon': false,
        'Rice': false,
        'Caviar': false,
        'Shrimp': false,
        'Noodles': false,
      };
      button_state[key] = true;
    });
    print('$key');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  top: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        'Amartya Ghosh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'Welcome back!',
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
                  ],
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Text(
                    'Go back',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 200,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(colors: [
                Colors.green,
                Colors.limeAccent.shade700,
              ]),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 40),
                  child: Column(
                    children: [
                      Text(
                        'Free food delivery\n with 15% discount',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: RaisedButton(
                          onPressed: null,
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          disabledColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            child: Text(
                              'Grab Now',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/page2_image1.png',
                  width: 182,
                  height: 182,
                )
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 75,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RButton(
                  bText: 'Popular',
                  isColored: button_state['Popular'],
                  bFunc: changeClr,
                ),
                RButton(
                  bText: 'Salmon',
                  isColored: button_state['Salmon'],
                  bFunc: changeClr,
                ),
                RButton(
                  bText: 'Rice',
                  isColored: button_state['Rice'],
                  bFunc: changeClr,
                ),
                RButton(
                  bText: 'Caviar',
                  isColored: button_state['Caviar'],
                  bFunc: changeClr,
                ),
                RButton(
                  bText: 'Shrimp',
                  isColored: button_state['Shrimp'],
                  bFunc: changeClr,
                ),
                RButton(
                  bText: 'Noodles',
                  isColored: button_state['Noodles'],
                  bFunc: changeClr,
                ),
              ],
            ),
          ),
          new Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: fcardList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.75,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return fcardList[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
//just for fun