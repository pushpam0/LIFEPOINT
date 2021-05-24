import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/Utilities.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math' as math;

import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavigationIndex = 0;
  int _barcodeIndex = null;
  int _homeIndex = 0;
  int _listIndex = null;
  int _cardIndex = null;
  List adImageList = [
    "images/man.png",
    "images/Imagesuit.png",
    "images/photo-of-woman-wearing-denim-polo-3393501@2x.png",
    "images/Image 21@2x.png",
    "images/Image 30@2x.png",
    "images/Image 32@2x.png"
  ];

  List<String> nameList = [
    "Henry Ramirez",
    "Kara Cloutier",
    "Nathan Holt",
    "Kara Cloutie",
    "Jade Arnett"
  ];
  List<String> numberList = ["17880", "15860", "11380", "15860", "8750"];
  bool status = false;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sHight = MediaQuery.of(context).size.height;
    double newsHight = sHight - 212.0;
    double yourWidth = swidth * 0.50;
    double yourHightwo = swidth * 0.60;
    double yourHight = swidth * 0.67;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Utilities.purple,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(
                        "images/man.png",
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "DavidW",
                      style: TextStyle(fontSize: 16, color: Utilities.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Points",
                          style: TextStyle(color: Utilities.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Utilities.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 4.0,
                      percent: 0.40,
                      center: Stack(
                        children: [
                          Image.asset(
                            "images/life_points_logo.png",
                            height: 25,
                          ),
                          Positioned(
                              bottom: 1,
                              right: 1,
                              child: Text(
                                "1",
                                style: TextStyle(color: Utilities.white),
                              ))
                        ],
                      ),
                      progressColor: Colors.lightBlue,
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          _homeIndex == 0
              ? Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "NEWS",
                          style:
                              TextStyle(color: Utilities.white, fontSize: 18),
                        ),
                      ),
                      CarouselSlider(
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.63,
                            enlargeCenterPage: true,
                          ),
                          items: adImageList
                              .map((e) => sliderCards(imageURI: e))
                              .toList()),
                    ],
                  ),
                )
              : Container(),
          _barcodeIndex == 1
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "DIGITAL MEMBER CARD",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(50.0),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 50.0),
                      child: Center(
                        child: Image.asset("images/barcode.png"),
                      ),
                    ),
                  ],
                )
              : Container(),
          _listIndex == 2
              ? Column(
                  children: [
                    Container(
                      height: 30,
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "RANKING",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Monthly",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: FlutterSwitch(
                              width: 60.0,
                              height: 50.0,
                              toggleSize: 20,
                              toggleColor: Colors.blue,
                              activeColor: Colors.white10,
                              inactiveColor: Colors.white10,
                              value: status,
                              onToggle: (value) {
                                setState(() {
                                  status = value;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Yearly",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      child: ListView.builder(itemBuilder: (ctx, index) {
                        return nameList.length > index
                            ? Card(
                                margin:
                                    EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Card(
                                            color: Colors.black,
                                            child: FittedBox(
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        10, 30, 10, 30),
                                                    child: Text(
                                                      (index + 1).toString(),
                                                    ),
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0.0,
                                                                20.0,
                                                                0.0,
                                                                20.0),
                                                        width: 70,
                                                        height: 70,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                      Container(
                                                        width: 70,
                                                        height: 70,
                                                        child: CircleAvatar(
                                                          radius: 28,
                                                          backgroundImage:
                                                              AssetImage(
                                                            index == 0
                                                                ? "images/man.png"
                                                                : index == 1
                                                                    ? "images/woman-leaning-on-white-fence-1974185.png"
                                                                    : index == 2
                                                                        ? "images/leonel-hernandez-arteaga-jns8BPueAgU-unsplash.png"
                                                                        : index ==
                                                                                3
                                                                            ? "images/woman-leaning-on-white-fence-1974185.png"
                                                                            : "images/photo-of-woman-wearing-yellow-floral.png",
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        20, 5, 10, 20),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          nameList[index],
                                                          style: TextStyle(
                                                              fontSize: 20.0),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 20, 10, 0),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                                child: Icon(
                                                                  Icons
                                                                      .star_border,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                numberList[
                                                                    index],
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20.0),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                  Image.asset(
                                                    "images/life_points_logo.png",
                                                    width: 40,
                                                    color: Colors.blue,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 2.0,
                                      color: Utilities.purple,
                                    )
                                  ],
                                ),
                                borderOnForeground: true,
                              )
                            : null;
                      }),
                    ),
                  ],
                )
              : Container(),
          _cardIndex == 3
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: 17,
                    itemBuilder: (BuildContext context, int index) => Container(
                      color: Colors.green,
                      child: Container(
                        color: Utilities.sbway,
                        child: index%2==0?Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                              child: Row(
                                children: [Expanded(
                                  child: Column(
                                    children: [
                                      Text("200"),
                                      Text("POINTS"),
                                    ],
                                  ),
                                ),
                                  Expanded(
                                    child: Image.asset(
                                      "images/starbucks-logo.png",
                                    ),
                                  ),],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Image.asset(
                                "images/pngwave.png",
                              width: 85,
                                height: 85,
                              ),
                            ),
                          ],
                        ):Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                              child: Row(
                                children: [Expanded(
                                  child: Column(
                                    children: [
                                      Text("200"),
                                      Text("POINTS"),
                                    ],
                                  ),
                                ),
                                  Expanded(
                                    child: Image.asset(
                                      "images/starbucks-logo.png",
                                    ),
                                  ),],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Image.asset(
                                "images/pngwave.png",
                                width: 200,
                                height: 220,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(2, index.isOdd ? 3.5 : 2),
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 3.0,
                  ),
                )
              : Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // onTap: (newIndex) => setState(() => _bottomNavigationIndex = newIndex),
        onTap: (newindex) {
          barCodeActivate(newindex);
        },

        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          homeBottomNavigationBarItem(Icons.dashboard_outlined,
              _bottomNavigationIndex == 0 ? Utilities.accentPink : Colors.grey),
          homeBottomNavigationBarItem(Icons.qr_code_scanner_outlined,
              _bottomNavigationIndex == 1 ? Utilities.accentPink : Colors.grey),
          homeBottomNavigationBarItem(Icons.wine_bar_outlined,
              _bottomNavigationIndex == 2 ? Utilities.accentPink : Colors.grey),
          homeBottomNavigationBarItem(Icons.shopping_cart_outlined,
              _bottomNavigationIndex == 3 ? Utilities.accentPink : Colors.grey),
        ],
      ),
    );
  }

  Widget sliderCards(
          {String title = "Nike Joyride",
          String imageURI = "images/man.png",
          String description = "Lorem Ipsum is simply dummy text of the"}) =>
      Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [new Color(0xffFFEA57), Colors.black]),
            color: Colors.blue,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.all(Radius.circular(27)),
          ),
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                            // topRight: Radius.circular(20.0),
                            // topLeft: Radius.circular(20.0)
                            Radius.circular(30)),
                        child: Image.asset(
                          imageURI,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title != null
                        ? Positioned(
                            child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                              child: Container(
                                height: 70,
                                width: double.infinity,
                                color: Color(0xff171732),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(title),
                                      ),
                                      Flexible(
                                        child: Text(
                                          description,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
                        : Container()
                  ],
                ),
              ),
            ],
          ));

  BottomNavigationBarItem homeBottomNavigationBarItem(
      IconData itemIcon, Color itemColor) {
    return BottomNavigationBarItem(
        icon: Icon(
          itemIcon,
          color: itemColor,
          size: 25,
        ),
        label: "");
  }

  void barCodeActivate(int value) {
    if (value == 1) {
      setState(() {
        _barcodeIndex = 1;
        _homeIndex = null;
        _listIndex = null;
        _cardIndex = null;
      });
    }
    // Navigator.push(context, MaterialPageRoute(builder: (context) => BarCode()));
    if (value == 0) {
      setState(() {
        _homeIndex = 0;
        _barcodeIndex = null;
        _listIndex = null;
        _cardIndex = null;
      });
    }

    if (value == 2) {
      setState(() {
        _listIndex = 2;
        _homeIndex = null;
        _barcodeIndex = null;
        _cardIndex = null;
      });
    }
    if (value == 3) {
      setState(() {
        _listIndex = 0;
        _homeIndex = null;
        _barcodeIndex = null;
        _cardIndex = 3;
      });
    }
  }
}
