import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:indianmoney_assignment/files/navbar.dart';


final List rooms = [
  {
    "image": "assets/images/cab1.png",
    "title": "Awesome room near Bouddha"
  },
  {
    "image": "assets/images/cab2.png",
    "title": "Peaceful Room"
  },
  {
    "image": "assets/images/cabs.png",
    "title": "Beautiful Room"
  },
  {
    "image": "assets/images/mytaxi.png",
    "title": "Vintage room near Pashupatinath"
  },
];

class homescreen extends StatefulWidget {
  homescreen() : super();

 // final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<homescreen> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: new AppBar(
        brightness: Brightness.light,
        backgroundColor:Colors.orange,
        elevation: 0.0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        titleSpacing: 0.0,
        actions: <Widget>[
          Container(
              child:Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
//                      onTap: () {
//                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dailyrides()),);
//                      },
                      child: Container(
                          height: 60,
                          width: 100,
                          margin: EdgeInsets.only(top: 15/ 720 * screenHeight,left: 15/320*screenWidth,bottom: 12/720*screenWidth),

                          child: Text("Bangalore",  style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,),
                          )
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen()),);
                      },
                      child: Container(
                          height: 60,
                          width: 100,
                          margin: EdgeInsets.only(top: 15/ 720 * screenHeight,left: 15/320*screenWidth,bottom: 12/720*screenWidth),

                          child: Text("Delhi",  style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,),
                          )


                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen()),);
                      },
                      child: Container(
                          height: 60,
                          width: 100,
                          margin: EdgeInsets.only(top: 15 / 720 * screenHeight,left: 15/320*screenWidth,bottom: 12/720*screenWidth),

                          child: Text("Mumbai",  style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,),
                          )


                      ),
                    ),


                  ])),
        ],
      ),
      drawer: NavigationDrawer(),

      body: Container(


        child: SingleChildScrollView(

          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              carouselSlider = CarouselSlider(
                height: 200.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.redAccent : Colors.green,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.yellow,
                height: 200,
                width: 400,
                child: ListTile(
                  leading: Icon(Icons.list),
                  title:Text("karnatake", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  trailing: Text("Bangalore", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.black12,
                height: 200,
                width: 400,
                child: ListTile(
                  leading: Icon(Icons.list),
                  title:Text("Maharastra", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  trailing: Text("Mumbai", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.orange,
                height: 200,
                width: 400,
                child: ListTile(
                  leading: Icon(Icons.list),
                  title:Text("Tamilnadu", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  trailing: Text("Chennai", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.lightGreen,
                height: 200,
                width: 400,
                child: ListTile(
                  leading: Icon(Icons.list),
                  title:Text("Andrapradesh", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  trailing: Text("Hyderabad", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
