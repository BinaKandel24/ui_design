import 'package:flutter/material.dart';
import 'package:ui_design/service/data.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                child: Column(
                  children: [
                    //first row
                    Row(
                      children: [
                        Text(
                          'Explore',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10.0,
                    ),

                    //Second row
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(0xFFFD7384),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.drive_eta,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Motor',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 2.5),
                            child: Container(
                              height: 100.0,
                              child: Column(
                                children: [
                                  //first container

                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2BD093),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 10.0,
                                              ),
                                              child: Icon(Icons.local_offer,
                                                  color: Colors.white),
                                            ),
                                            Text('Classified',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  //Second Container
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2.5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFC7B48),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 10.0,
                                              ),
                                              child: Icon(Icons.beenhere,
                                                  color: Colors.white),
                                            ),
                                            Text('Service',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //third
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.5),
                            child: Container(
                              height: 100.0,
                              child: Column(
                                children: [
                                  //first container

                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF53CEDB),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 10.0,
                                              ),
                                              child: Icon(Icons.account_balance,
                                                  color: Colors.white),
                                            ),
                                            Text('Properties',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  //Second Container
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2.5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF1B069),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 10.0,
                                              ),
                                              child: Icon(Icons.art_track,
                                                  color: Colors.white),
                                            ),
                                            Text('Jobs',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    data[index][0]['title'],
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'View All',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF2BD093),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 140.0,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                data[index][1]['imageUrl'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          data[index][1]['imageDesc'],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Container(
                                    height: 140.0,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                data[index][2]['imageUrl'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          data[index][2]['imageDesc'],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Container(
                                    height: 140.0,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                data[index][3]['imageUrl'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          data[index][3]['imageDesc'],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
