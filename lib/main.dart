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
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        height: 400,
                        decoration: BoxDecoration(
                          // shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(40.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://www.princessefoulard.com/blog/wp-content/uploads/2022/08/beret-homme.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jacob Roberts',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Photographer.Work experience 7 years.',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'I make nature and product pgotograpgy.',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.baseline, //////////
                          textBaseline: TextBaseline.alphabetic, //////////////
                          children: [
                            Text(
                              "112",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " works",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color: Color.fromRGBO(242, 242, 242, 1),
                                    width: 1),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-photo/road-mountains-with-cloudy-sky_1340-23022.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(242, 242, 242, 1),
                                    width: 2),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://image.jimcdn.com/app/cms/image/transf/dimension=1040x10000:format=jpg/path/s2217cd0bb1220415/image/i921c8cdd05b2108e/version/1683748912/antique-photos-and-camera.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 55),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(242, 242, 242, 1),
                                    width: 2),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ) ////////////////////////////////////
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(242, 242, 242, 1),
                        borderRadius: BorderRadius.circular(28.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '  applications',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(3, 21, 103, 1),
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '25',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'views tody',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(242, 242, 242, 1),
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
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
