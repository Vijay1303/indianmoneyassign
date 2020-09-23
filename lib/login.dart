//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//class landing extends StatefulWidget {
//  @override
//  _designloginState createState() => _designloginState();
//}
//
//class _designloginState extends State<landing> {
//
//
//
////  GoogleSignIn _googleSignIn = GoogleSignIn(
////    scopes: [
////      'email',
////      'https://www.googleapis.com/auth/contacts.readonly',
////    ],
////  );
////  Future<void> _handleSignIn() async {
////    try {
////      await _googleSignIn.signIn();
////      //showErrorMessage(_googleSignIn.currentUser.email);
////      print(_googleSignIn.currentUser);
////      _googleSignIn.signOut();
////    } catch (error) {
////      print(error);
////    }
////  }
//
//  @override
//  Widget build(BuildContext context) {
//    var screenWidth = MediaQuery.of(context).size.width;
//    var screenHeight = MediaQuery.of(context).size.height;
//    Future<bool> _onWillPop() {
//      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
//    }
//    //var getSvgIcon;
//    return WillPopScope(
//      onWillPop: _onWillPop,
//      child: Scaffold(
//          backgroundColor: Colors.white,
//          body: SingleChildScrollView(
//            child: Container(
//              child: Column(
//                children: [
//                  GestureDetector(
//                    onTap: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => dlogin()));
//                    },
//                    child: Container(
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          ClipPath(
//                            clipper: OvalBottomBorderClipper(),
//                            child: FadeAnimation(1.6,
//                              Container(
//                                height: 400,
//                                // color: Color.fromRGBO(255,212,40,1) ,
//                                decoration: BoxDecoration(
//                                  image: DecorationImage(
//                                      image: AssetImage('assets/mytaxi.png'),
//                                      fit: BoxFit.cover
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ),
//                          FadeAnimation(1,
//                            Container(
//                                margin: EdgeInsets.only(top: 30,left: 20),
//                                child: Text("Welcome to the\n MyTaxiCab", style: TextStyle(
//                                  color: Colors.black,
//                                  fontSize: 28,
//                                  fontFamily: "IBMPlexSans",
//                                  fontWeight: FontWeight.w400,),)
//                            ),
//                          ),
//
//
//                          Padding(
//                            padding: EdgeInsets.all(30.0),
//                            child: Column(
//                              children: <Widget>[
//
//                                FadeAnimation(1,
//                                  Container(
//                                    padding: EdgeInsets.all(5),
//                                    child: Column(
//                                      children: <Widget>[
//
//
//                                        const SizedBox(height: 40.0),
//                                        Row(
//                                          children: <Widget>[
//
//                                            Expanded(
//                                              child: GestureDetector(
//                                                onTap: (){
//                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => dlogin()));
//                                                },
//                                                child: Container(
//                                                  height: 60,
//                                                  decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.circular(5),
//                                                      gradient: LinearGradient(
//                                                          colors: [
//                                                            Color.fromRGBO(255,212,40,1),
//                                                            Color.fromRGBO(241,202,40,1),
//                                                          ],
//                                                          begin: Alignment.topLeft,
//                                                          end: Alignment.topRight
//                                                      )
//                                                  ),
//                                                  child: Center(
//                                                    child: Text("Login", style: TextStyle(color: Colors.black,fontSize: 20,
//                                                      fontFamily: "IBMPlexSans",
//                                                      fontWeight: FontWeight.w600,
//                                                    ),),
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//
//                                            Expanded(
//                                              child: GestureDetector(
//                                                onTap: (){
//                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => regist()));
//                                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => otpscreen()));
//                                                },
//                                                child: Container(
//                                                  margin: EdgeInsets.only(left:10/360*screenWidth),
//                                                  height: 60,
//                                                  decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.circular(5),
//
//                                                      gradient: LinearGradient(
//                                                          colors: [
//                                                            Colors.black,
//                                                            Colors.black,
//                                                          ],
//                                                          begin: Alignment.topLeft,
//                                                          end: Alignment.topRight
//                                                      )
//                                                  ),
//                                                  child: Center(
//                                                    child: Text("Register", style: TextStyle(color: Colors.white,fontSize: 20,
//                                                      fontFamily: "IBMPlexSans",
//                                                      fontWeight: FontWeight.w600,),),
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//
////                                        Expanded(
////                                          flex: 1,
////                                          //SizedBox(height: 20.0),
////                                          child: Container(
////                                            padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
////                                            child: CountryCodePicker(
////                                              initialSelection: 'IN',
////                                              showCountryOnly: false,
////                                              showOnlyCountryWhenClosed: false,
////                                              favorite: ['+91','IN'],
////                                              enabled: true,
////                                              hideMainText: false,
////                                              showFlagMain: true,
////                                              showFlag: true,
////                                              hideSearch: false,
////                                              showFlagDialog: true,
////                                              alignLeft: true,
////                                              //     padding: EdgeInsets.all(16.0),
////                                            ),
////                                          ),
////                                        ),
////                                        Expanded(
////                                          flex:3,
////                                          child: new Theme(
////                                            data: new ThemeData(
////                                              primaryColor: Colors.blueAccent,
////                                              primaryColorDark: PrimaryColors.yellow,
////
////                                            ),
////                                            child: Container(
////                                                margin: EdgeInsets.only(top: 10,left:15),
////                                                child: Text("Mobile Number", style: TextStyle(
////                                                  color: Colors.black54,
////                                                  fontSize: 24,
////                                                  fontFamily: "IBMPlexSans",
////                                                  fontWeight: FontWeight.w600,),)
////                                            ),
////
////                                          ),
////                                        ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ),
//                                const SizedBox(height:20.0),
//
//
//
//
//                                SizedBox(height: 10,),
////                        Container(
////                            child: Row(
////                              children: <Widget>[
////                                Text("Does not have account?",style: new TextStyle(
////                                  color: Colors.black,
////                                  fontFamily: 'IBMPlexSans',
////                                  fontWeight: FontWeight.w300,
////                                  fontSize: 16.0,
////                                ),),
////                                 InkWell(
////                                   onTap: (){
////                                     Navigator.push(context, MaterialPageRoute(builder: (context) => regist()));
////                                   },
////                                   child: Container(
////                                     child: Text("Register",style: new TextStyle(color: Color.fromRGBO(28, 16,0, 1),
////                                        fontFamily: "IBMPlexSans",
////                                        fontWeight: FontWeight.w800,
////                                        fontSize: 14.0,
////                                      ),),
////                                   ),
////                                 ),
////
////
////                              ],
////                              mainAxisAlignment: MainAxisAlignment.center,
////                            )),
//                              ],
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//
////                  Padding(
////                    //height: screenHeight * 0.055,
////                    padding: EdgeInsets.only(
////                        left: screenWidth * 45 / 360,
////                        top: screenHeight * 15 / 720,
////                        right: screenWidth * 45 / 360),
////                    child: Row(
////                      crossAxisAlignment: CrossAxisAlignment.start,
////                      children: [
////                        Container(
////                          width: screenWidth * 130 / 360,
////                          height: screenHeight * 40 / 720,
////                          child: GestureDetector(
////                              onTap: () {
////                                //_handleSignIn();
////                              },
////                              child:getSvgIcon.googleSvgIcon),
////                        ),
////                        Spacer(),
////                        Container(
////                          width: screenWidth * 130 / 360,
////                          height: screenHeight * 40 / 720,
////                          child: GestureDetector(
////                            onTap: () {
////                              //initiateFacebookLogin();
////                            },
////
////                            child: getSvgIcon.facebookSvgIcon,
////                          ),
////                        ),
////                      ],
////                    ),
////                  ),
//
//
////                  Container(
////                  //  const SizedBox(height: 50.0),
////                   child: Row(
////                      mainAxisAlignment: MainAxisAlignment.center,
////                      children: <Widget>[
////                        OutlineButton.icon(
////                          padding: const EdgeInsets.symmetric(
////                            vertical: 8.0,
////                            horizontal: 30.0,
////                          ),
////                          shape: RoundedRectangleBorder(
////                              borderRadius: BorderRadius.circular(20.0)),
////                          borderSide: BorderSide(color: Colors.red),
////                          color: Colors.red,
////                          highlightedBorderColor: Colors.red,
////                          textColor: Colors.red,
////                          icon: Icon(
////                            FontAwesomeIcons.googlePlusG,
////                            size: 18.0,
////                          ),
////                          label: Text("Google"),
////                          onPressed: () {},
////                        ),
////                        const SizedBox(width: 10.0),
////                        OutlineButton.icon(
////                          padding: const EdgeInsets.symmetric(
////                            vertical: 8.0,
////                            horizontal: 30.0,
////                          ),
////                          shape: RoundedRectangleBorder(
////                              borderRadius: BorderRadius.circular(20.0)),
////                          highlightedBorderColor: Colors.indigo,
////                          borderSide: BorderSide(color: Colors.indigo),
////                          color: Colors.indigo,
////                          textColor: Colors.indigo,
////                          icon: Icon(
////                            FontAwesomeIcons.facebook,
////                            size: 18.0,
////                          ),
////                          label: Text("Facebook"),
////                          onPressed: () {},
////                        ),
////                      ],
////                    ),
////                  ),
//                ],
//              ),
//
//
//
//            ),
//          )
//      ),
//    );
//  }
//}
