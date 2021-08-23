import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CustomStuff/Custom.dart';


class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int index = 0;
  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "The way to get started is to quit talking and begin doing.",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    "If life were predictable it would cease to be life, and be without flavor.",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success",
    "Life is what happens when you're busy making other plans.",
    "Spread love everywhere you go. Let no one ever come to you without leaving happier.",
    "When you reach the end of your rope, tie a knot in it and hang on.",
    "Always remember that you are absolutely unique. Just like everyone else.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "The best and most beautiful things in the world cannot be seen or even touched",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You have pushed the button this many times:"),

                Text(index.toString()),
                FlatButton.icon(
                    onPressed: _showNumplus,
                    icon: Icon(Icons.add),
                    label: Text("Inspire me!")),

                FlatButton.icon(
                    onPressed: _showNumminus,
                    icon: Icon(Icons.minimize),
                    label: Text("NOT Inspire me!"))
              ],
            )));
  }

  void _showQuote() {
    setState(() {
      index ++;
    });
  }

  void _showNumplus(){
    setState((){
      index ++;
    });
  }

  void _showNumminus(){
    setState((){
      index --;
    });
  }
}

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BizCard")),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
            //Text("xxx")
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
        width: 350,
        height: 200,
        margin: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.shade100,
            borderRadius: BorderRadius.circular(4.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "顾瞳",
              style: TextStyle(
                  fontSize: 20.9,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text("♥"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_outline),
                Text("汇款账号:888-88888-888")
              ],
            )
          ],
        ));
  }

  Container _getAvatar() {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border:
            Border.all(color: Colors.deepPurpleAccent.shade100, width: 1.2),
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200/300"),
                fit: BoxFit.cover)));
  }
}

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint("Tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
          centerTitle: true,
          backgroundColor: Colors.amber.shade300,
          actions: [
            IconButton(
                onPressed: () => debugPrint("Email Tapped!"),
                icon: Icon(Icons.email)),
            IconButton(
                onPressed: () => _tapButton(), icon: Icon(Icons.access_alarms)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightGreenAccent.shade700,
            child: Icon(Icons.call_missed),
            onPressed: null),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("First")),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), title: Text("Second")),
          ],
          backgroundColor: Colors.amber.shade300,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //button
              CustomButton(),
              // InkWell(
              //   child: Text("Denis Baga",
              //    style:TextStyle(fontSize: 25),),
              //
              //   onTap: () => debugPrint("tapped..."),
              // )
            ],
          ),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Center(
          child: Text("Hello Flutter!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.4,
                fontStyle: FontStyle.italic,
              ))),
    );
  }
}


