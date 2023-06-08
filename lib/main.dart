import 'package:flutter/material.dart';

void main() {
  runApp(NinjaCard());
}
class NinjaCard extends StatefulWidget {
   NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('My Ninja ID'),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            ninjalevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 30.0, 40.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  foregroundImage: AssetImage("../assets/avatar.jpg"),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Vibhavan',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Current Ninja Level',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '$ninjalevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'vibhavankarthik123@gmail.com',
                    style: TextStyle(color: Colors.grey[400], fontSize: 18.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
