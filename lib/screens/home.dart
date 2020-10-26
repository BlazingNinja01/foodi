import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var search;
var listsize;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    listsize = 5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.location_on, color: Colors.orange),
          onPressed: () {},
        ),
        title: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Food',
                  style: TextStyle(color: Colors.black54),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.orange)
              ],
            ),
            SizedBox(height: 5),
            Text('Address bla bla bla bla bla',
                style: TextStyle(color: Colors.black45, fontSize: 12)),
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu, color: Colors.black54), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          //padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: <Widget>[
              //custom appbar
              // Container(
              //   width: double.infinity,
              //   margin: EdgeInsets.only(top: 25),
              //   padding: EdgeInsets.all(15),
              //   color: Colors.white,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       Row(
              //         children: <Widget>[
              //           Icon(Icons.location_on, color: Colors.orange),
              //           SizedBox(width: 5),
              //           Column(
              //             //mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Row(
              //                 children: <Widget>[
              //                   Text(
              //                     'Food',
              //                     style: TextStyle(
              //                         color: Colors.black54,
              //                         fontSize: 18,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   Icon(Icons.keyboard_arrow_down,
              //                       color: Colors.orange)
              //                 ],
              //               ),
              //               //SizedBox(height: 5),
              //               Text('Address bla bla bla bla bla',
              //                   style: TextStyle(
              //                       color: Colors.black45, fontSize: 12)),
              //             ],
              //           ),
              //         ],
              //       ),
              //       IconButton(
              //           icon: Icon(Icons.menu, color: Colors.black54),
              //           onPressed: () {
              //             print('button pressed');
              //           }),
              //     ],
              //   ),
              // ),

              //search bar
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black12,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  search = value;
                                });
                                print(search);
                              },
                              cursorColor: Colors.orange,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'What are you looking for?',
                                hintStyle: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                ),
                                suffixIcon:
                                    Icon(Icons.search, color: Colors.black45),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //SizedBox(height: 15),

                  //Horizontal scrollabe list
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '288 RESTAURANTS',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.filter_alt,
                                        color: Colors.black54),
                                    Text(
                                      'FILTERS',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(vertical: 5),
                          height: 180,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listsize,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 160,
                                margin: (index == 0)
                                    ? EdgeInsets.only(left: 20, right: 10)
                                    : EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(vertical: 5),
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listsize,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 70,
                                margin: (index == 0)
                                    ? EdgeInsets.only(left: 20, right: 20)
                                    : EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.grey[200], Colors.white],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.build_outlined,
                                        color: Colors.lightGreen[300],
                                        size: 30),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'TEXT',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
