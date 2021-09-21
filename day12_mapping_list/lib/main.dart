import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "Name": "Rahadian",
        "Age": 39,
        "favColor": ["Black", "Red", "White"]
      },
      {
        "Name": "Lidya",
        "Age": 35,
        "favColor": [
          "Black",
          "Red",
          "White",
          "blue",
          "amber",
          "Black",
          "Red",
          "White",
          "blue",
          "amber",
          "Black",
          "Red",
          "White",
          "blue",
          "amber",
        ]
      },
      {
        "Name": "Nadzarion",
        "Age": 12,
        "favColor": ["Black", "Red", "White"]
      },
      {
        "Name": "Aldrich",
        "Age": 4,
        "favColor": ["Black", "Red", "White", "blue", "amber"]
      },
      {
        "Name": "Aldrich",
        "Age": 4,
        "favColor": ["Black", "Red", "White", "blue", "amber"]
      },
      {
        "Name": "Aldrich",
        "Age": 4,
        "favColor": ["Black", "Red", "White", "blue", "amber"]
      },
      {
        "Name": "Aldrich",
        "Age": 4,
        "favColor": ["Black", "Red", "White", "blue", "amber"]
      },
      {
        "Name": "Aldrich",
        "Age": 4,
        "favColor": [
          "Black",
          "Red",
          "White",
          "blue",
          "amber",
          "Black",
          "Red",
          "White",
          "blue",
          "amber" "Black",
          "Red",
          "White",
          "blue",
          "amber"
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ID Apps")),
        body: (ListView(
          children: myList.map((data) {
            List myFavColor = data['favColor'];
            print(myFavColor);

            return Container(
              child: Card(
                margin: EdgeInsets.all(20),
                color: Colors.black.withOpacity(0.1),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name : ${data['Name']}"),
                              Text("Age : ${data['Age']}"),
                            ],
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: myFavColor.map((color) {
                            return Container(
                              color: Colors.amber,
                              margin: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 8),
                              padding: EdgeInsets.all(10),
                              child: Text(color),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        )),
      ),
    );
  }
}
