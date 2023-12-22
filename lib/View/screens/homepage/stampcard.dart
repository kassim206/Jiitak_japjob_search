import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jiitak_japanese/core/constants.dart';
import 'package:jiitak_japanese/core/pallets.dart';

import 'editestore.dart';

class StampCard extends StatefulWidget {
  const StampCard({super.key});

  @override
  State<StampCard> createState() => _StampCardState();
}

class _StampCardState extends State<StampCard> {
  int currentIndex = 0;

  List<Color> containerColors = [
    Colors.red,
    pallete.blue,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: pallete.blue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: deviceWidth,
                height: deviceHeight * 0.096,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      deviceWidth * 0.03, 0, deviceWidth * 0.03, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: deviceWidth * 0.05,
                        backgroundColor: Colors.black12,
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: deviceWidth * 0.07,
                        ),
                      ),
                      Text(
                        "スタンプカード詳細",
                        style: TextStyle(
                            color: Colors.white, fontSize: deviceWidth * 0.04),
                      ),
                      Icon(
                        Icons.remove_circle_outline_outlined,
                        color: Colors.white,
                        size: deviceWidth * 0.1,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidth,
                height: deviceHeight * 0.08,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      deviceWidth * 0.03, 0, deviceWidth * 0.03, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mer キッチン",
                        style: TextStyle(
                            color: Colors.white, fontSize: deviceWidth * 0.04),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '現在の獲得数 ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: deviceWidth * 0.04),
                          children: <TextSpan>[
                            TextSpan(
                              text: '30',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: deviceWidth * 0.06),
                            ),
                            TextSpan(
                              text: '個',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviceWidth * 0.04),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.782,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(deviceWidth * 0.07),
                    topStart: Radius.circular(deviceWidth * 0.07),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: deviceHeight * 0.05,
                      ),
                      SizedBox(
                        width: deviceWidth,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            initialPage: 1,
                            enlargeFactor: 0.4,
                            autoPlay: false,
                            height: deviceHeight * 0.24,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                          items: containerColors.map((color) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                Constants.star,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        ),
                      ),

                      SizedBox(
                          height: deviceHeight *
                              0.01), // Adjust the spacing as needed
                      Padding(
                        padding: EdgeInsets.only(right: deviceWidth * 0.02),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '${currentIndex + 1} / ${containerColors.length} 枚目',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: deviceWidth * 0.04),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: deviceWidth * 0.04),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'スタンプ獲得履歴',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * 0.05,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth,
                        height: deviceHeight * 0.4,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(top: deviceHeight * 0.01),
                              child: SizedBox(
                                width: deviceWidth,
                                height: deviceHeight * 0.14,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      deviceWidth * 0.03,
                                      0,
                                      deviceWidth * 0.03,
                                      0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2021 / 11 / 18',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200,
                                          fontSize: deviceWidth * 0.036,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'スタンプを獲得しました。',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: deviceWidth * 0.04,
                                            ),
                                          ),
                                          Text(
                                            '1 個',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: deviceWidth * 0.04,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider()
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
