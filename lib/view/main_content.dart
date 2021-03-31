import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
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
                                    padding: const EdgeInsets.only(bottom: 2.5),
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
                                    padding: const EdgeInsets.only(bottom: 2.5),
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

                  SizedBox(height: 10.0),
                  //Third Row

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Popular Trending',
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

                  SizedBox(
                    height: 10.0,
                  ),

                  //fourth row
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://cdn57.androidauthority.net/wp-content/uploads/2018/09/Fortnite-Game-Play-3-840x472.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Play Station',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://robbreport.com/wp-content/uploads/2020/10/highjewellery01.jpg?w=1000',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Jwellery and Watches',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.online-tech-tips.com/wp-content/uploads/2019/12/electronic-gadgets.jpeg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Electronics',
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

                  SizedBox(height: 10.0),
                  //Fifth Row

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Recent Searches',
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

                  SizedBox(
                    height: 10.0,
                  ),

                  //Sixth row
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://ideadrop.s3.eu-west-2.amazonaws.com/wp-content/uploads/2019/03/16124806/rsz_1digital-innovation-news-768x538.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Innovation',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.analyticsinsight.net/wp-content/uploads/2020/07/Artificial-Intelligence-Trends.jpeg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Artificial Intelligence',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://motivationping.com/wp-content/uploads/2017/11/21.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Motivational Quotes',
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

                  SizedBox(height: 10.0),
                  //Seventh Row

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Recommended',
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

                  SizedBox(
                    height: 10.0,
                  ),

                  //Eighth row
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://play-lh.googleusercontent.com/h9jWMwqb-h9hjP4THqrJ50eIwPekjv7QPmTpA85gFQ10PjV02CoGAcYLLptqd19Sa1iJ=s180-rw',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Instagram',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.familyandmedia.eu/wp-content/uploads/2016/11/candy-crush1.jpg',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Candy Crush Saga',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://m.media-amazon.com/images/I/41Qt+OVJnvL.jpg',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'The Book of Love',
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

                  SizedBox(height: 10.0),
                  //Ninth Row

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Dramas',
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

                  SizedBox(
                    height: 10.0,
                  ),

                  //Tenth row
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJd4lIpbAL9-OLgqqwscO8poDcx4vpCHTshg&usqp=CAU',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Accidentally in Love',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://images.indianexpress.com/2020/08/descendants-of-the-sun.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Descendents of the Sun',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/175273b4-1227-48cb-8515-b45458a58a0f_itaewonbanner.jpg',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Itaewon Class',
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

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Animated Movies',
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
                  SizedBox(
                    height: 10.0,
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://static01.nyt.com/images/2018/11/21/arts/21ralphbreaks/21ralphbreaks-articleLarge-v3.jpg?quality=75&auto=webp&disable=upscale',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Ralph Breaks the Internet',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i0.wp.com/writingstudio.co.za/wp-content/uploads/2015/12/Inside-OUt.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Inside Out',
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
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://reporter.lcms.org/wp-content/uploads/2019/07/Toy-Story-4.jpg',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Toy Story 4',
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
