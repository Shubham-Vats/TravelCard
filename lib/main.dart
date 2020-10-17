import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
  Widget titleSection = Container(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Container(
                    child: Text(
                      "Narmada River",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Madhya Pradesh, India",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.red,
                    fontFamily: 'Cursive'
                  ),
                ),
              ],
            ) 
          ),
          Icon(Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    ),
  );

  Widget buttonSection = Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.call,
            color: Colors.blue,
            //size: 35.0,
            ),
            Text("CALL",
              style: TextStyle(
                //fontSize: 19.0,
                color: Colors.blue,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
                ),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.near_me,
            color: Colors.blue,
            //size: 35.0,
            ),
            Text("DIRECTION",
              style: TextStyle(
                //fontSize: 19.0,
                color: Colors.blue,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.share,
            color: Colors.blue,
            //size: 35.0,
            ),
            Text("SHARE",
              style: TextStyle(
                //fontSize: 19.0,
                color: Colors.blue,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    ),
  );

  Widget textSection = Container(
    padding: EdgeInsets.all(20.0),
    child: Text(
      "The Narmada River, also called the Reva and previously also known as Narbada (Nerbudda)."
      " It is also known asLife Line of Madhya Pradesh and Gujarat for its huge contribution" 
      " to the state of Madhya pradesh and Gujarat in many ways. Narmada rises from Amarkantak" 
      " Plateau in Anuppur district Madhya Pradesh. It forms the traditional boundary between" 
      " North India and South India and flows westwards over a length of 1,312 km before draining" 
      " through the Gulf of Khambhat into the Arabian Sea, 30 km west of Bharuch city of Gujarat.",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Cursive',
        fontSize: 16.0,
      ),
    )
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Card',
      theme: ThemeData(
        primarySwatch:Colors.red,
      ),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Image.asset(
                "assets/images/river.jpg",
                height: 280,
                width: 500,
                fit: BoxFit.cover,
                ),
                titleSection,
                buttonSection,
                textSection,
              ],
            ),
          ),
        ),
      ),
    );
  }
}