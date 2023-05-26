import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[200],
                        ),
                        child: const Icon(Icons.arrow_back_ios_new),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[200],
                        ),
                        child: const Icon(Icons.tune),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "74  results  for\n'photographer'",
                        style: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Center(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          width: 400,
                          height: 370,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(75.0),
                              color: Color.fromRGBO(242, 242, 242, 1)),
                        ),
                        Container(
                          width: 410,
                          height: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(65.0),
                            color: Color.fromRGBO(230, 230, 237, 1),
                          ),
                        ),
                        Container(
                          width: 410,
                          height: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55.0),
                            color: const Color.fromRGBO(2, 23, 104, 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ' Photographer',
                                      style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(12.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.5)),
                                      child: const Icon(
                                        Icons.bookmark_border,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(12.0),
                                margin: EdgeInsets.only(left: 20.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.white),
                                child: Text(
                                  "\$120/h  ",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.blue[900]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Subject and studio photogrphy \n of goods for an online store.Photo\nprocessing",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 18.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.5)),
                                      child: Text(
                                        '  Photography  ',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(12.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.5)),
                                      child: Text(
                                        '  Photoshop  ',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0, //80
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.perm_identity,
                        color: const Color.fromRGBO(3, 21, 103, 1),
                        size: 25,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 25,
                      ),
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.circular(16.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
