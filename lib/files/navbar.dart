import 'package:flutter/material.dart';
import 'package:indianmoney_assignment/files/login_page.dart';


class NavigationDrawer extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NavigationDrawer> {
  @override
  void initState() {
    super.initState();
    print('******************initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('******************didChangeDependencies');
    //getMenus();
    // setState(() {
    //    getMenus();
    // });
  }

  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(right: 120 * screenWidth / 360),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.black,

            height: 180 / 720 * screenHeight,
            //    margin: EdgeInsets.only(top: 20 / 720 * screenHeight, bottom: 10 / 720 * screenHeight,),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20 / 720 * screenHeight, bottom: 10 / 720 * screenHeight,left: 10/320*screenWidth),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://secure.gravatar.com/avatar/?s=96&d=mm"),
                    radius: 60 / 360 * screenWidth / 2,
                    backgroundColor: Colors.white,
                    //width: 51 / 360 * screenWidth,
                    //  height: 51 / 720 * screenHeight,

                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Profile(),
                        //     ));
                      },
                      // child: Image.asset(
                      //   "assets/images/profileImage_placeholder.png",
                      //   fit: BoxFit.contain,
                      // ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 14 / 360 * screenWidth,top:70/720*screenHeight,bottom: 10/720*screenHeight),
                      child: Column(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top:5/720*screenHeight,bottom: 5/720*screenHeight),
                            child: Text(
                              "User",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14 / 360 * screenWidth,
                                fontFamily: "IBMPlexSans",
                                fontWeight: FontWeight.w500,
                              ),
                              //    textAlign: TextAlign.left,
                            ),
                          ),
                          // Container(
                          //   child: InkWell(
                          //     onTap: () {
                          //       Navigator.of(context).pop();
                          //       // Navigator.push(context,MaterialPageRoute(
                          //       //       builder: (context) => Profile(),
                          //       //     ));
                          //     },
                          //     child: Text(
                          //       "View Profile",
                          //       style: TextStyle(
                          //         fontSize: 14 / 360 * screenWidth,
                          //         fontFamily: "IBMPlexSans",
                          //         color: Color.fromARGB(255, 0, 171, 251),
                          //       ),
                          //       textAlign: TextAlign.left,
                          //     ),
                          //   ),
                          // ),
                          Container(
                            //    margin: EdgeInsets.only(top:80/720*screenHeight,bottom: 5/720*screenHeight),
                            child: Text(
                              "user@gmail.com",
                              style: TextStyle(
                                //color: Color.fromARGB(255, 31, 37, 43),
                                color: Colors.white,
                                fontSize: 12/ 360 * screenWidth,
                                fontFamily: "IBMPlexSans",
                                fontWeight: FontWeight.w300,
                              ),
                              //  textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
//                    Container(
//                     margin: EdgeInsets.only(left: 12 / 360 * screenWidth),
//                      child: Column(
//                     //     mainAxisAlignment: MainAxisAlignment.center,
//                        children: [
//
//                          // Container(
//                          //   child: InkWell(
//                          //     onTap: () {
//                          //       Navigator.of(context).pop();
//                          //       // Navigator.push(context,MaterialPageRoute(
//                          //       //       builder: (context) => Profile(),
//                          //       //     ));
//                          //     },
//                          //     child: Text(
//                          //       "View Profile",
//                          //       style: TextStyle(
//                          //         fontSize: 14 / 360 * screenWidth,
//                          //         fontFamily: "IBMPlexSans",
//                          //         color: Color.fromARGB(255, 0, 171, 251),
//                          //       ),
//                          //       textAlign: TextAlign.left,
//                          //     ),
//                          //   ),
//                          // ),
//                        ],
//                      ),
//                    ),
                  ],
                )
              ],
            ),

//            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
//              children: [
//                Align(
//                  alignment: Alignment.topLeft,
//                  child: CircleAvatar(
//                    backgroundImage: NetworkImage("https://secure.gravatar.com/avatar/?s=96&d=mm"),
//                    radius: 40 / 360 * screenWidth / 2,
//                    backgroundColor: Colors.white,
//                    //width: 51 / 360 * screenWidth,
//                    //  height: 51 / 720 * screenHeight,
//
//                    child: GestureDetector(
//                      onTap: () {
//                        Navigator.of(context).pop();
//                        // Navigator.push(
//                        //     context,
//                        //     MaterialPageRoute(
//                        //       builder: (context) => Profile(),
//                        //     ));
//                      },
//                      // child: Image.asset(
//                      //   "assets/images/profileImage_placeholder.png",
//                      //   fit: BoxFit.contain,
//                      // ),
//                    ),
//                  ),
//                ),
//                Align(
//                  alignment: Alignment.centerLeft,
//                  child: Container(
//
//                    margin: EdgeInsets.only(left: 13 / 360 * screenWidth),
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Container(
//                          child: Text(
//                            "Username",
//                            style: TextStyle(
//                              color: Color.fromARGB(255, 31, 37, 43),
//                              fontSize: 16/ 360 * screenWidth,
//                              fontFamily: "IBMPlexSans",
//                              fontWeight: FontWeight.w700,
//                            ),
//                            textAlign: TextAlign.left,
//                          ),
//                        ),
//                        // Container(
//                        //   child: InkWell(
//                        //     onTap: () {
//                        //       Navigator.of(context).pop();
//                        //       // Navigator.push(context,MaterialPageRoute(
//                        //       //       builder: (context) => Profile(),
//                        //       //     ));
//                        //     },
//                        //     child: Text(
//                        //       "View Profile",
//                        //       style: TextStyle(
//                        //         fontSize: 14 / 360 * screenWidth,
//                        //         fontFamily: "IBMPlexSans",
//                        //         color: Color.fromARGB(255, 0, 171, 251),
//                        //       ),
//                        //       textAlign: TextAlign.left,
//                        //     ),
//                        //   ),
//                        // ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
          ),
          Container(
            height: 2/ 720 * screenHeight,
            margin: EdgeInsets.only(
                bottom: 1 / 720 * screenHeight, right: 5 / 360 * screenWidth),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 242, 244, 244),
            ),
            child: Container(),
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 20 / 720 * screenHeight,
                              left: 20 / 360 * screenWidth),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 20 / 720 * screenWidth),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.push(context, MaterialPageRoute(
                                    //                                    builder: (context)=> null(),
                                    //                                  ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                            //  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMentorHome(false),));
                                          },
                                          child: Text(
                                            "Home",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 31, 37, 43),
                                              fontSize: 14/ 360 * screenWidth,
                                              fontFamily: "IBMPlexSans",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMentorHome(false),));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Payment",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMentorHome(false),));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Cart",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) => BookHomeScreenBackup(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Summary",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) =>
                                    //                                            CalendarHomeScreen(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Subscription",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) =>
                                    //                                            CalendarHomeScreen(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Document",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 1 / 720 * screenHeight,
                                        margin: EdgeInsets.only(
                                            bottom: 1 / 720 * screenHeight,
                                            right: 20 / 360 * screenWidth),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) =>
                                    //                                            CalendarHomeScreen(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Help",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 1 / 720 * screenHeight,
                                        margin: EdgeInsets.only(
                                            bottom: 1 / 720 * screenHeight,
                                            right: 20 / 360 * screenWidth),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) =>
                                    //                                            CalendarHomeScreen(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Share",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 1 / 720 * screenHeight,
                                        margin: EdgeInsets.only(
                                            bottom: 1 / 720 * screenHeight,
                                            right: 20 / 360 * screenWidth),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) =>
                                    //                                            CalendarHomeScreen(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "About Us",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 1 / 720 * screenHeight,
                                        margin: EdgeInsets.only(
                                            bottom: 1 / 720 * screenHeight,
                                            right: 20 / 360 * screenWidth),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    //                                  Navigator.of(context).pop();
                                    //                                  Navigator.push(
                                    //                                      context,
                                    //                                      MaterialPageRoute(
                                    //                                        builder: (context) =>
                                    //                                            CalendarHomeScreen(),
                                    //                                      ));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "FAQ",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 1 / 720 * screenHeight,
                                        margin: EdgeInsets.only(
                                            bottom: 1 / 720 * screenHeight,
                                            right: 20 / 360 * screenWidth),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                height: 40 / 720 * screenHeight,
                                margin: EdgeInsets.only(top: 16 / 720 * screenHeight),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Logout",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 31, 37, 43),
                                            fontSize: 14/ 360 * screenWidth,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 1 / 720 * screenHeight,
                                        margin: EdgeInsets.only(
                                            bottom: 1 / 720 * screenHeight,
                                            right: 20 / 360 * screenWidth),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
