import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_japanese/core/constants.dart';
import 'package:jiitak_japanese/core/global_variable.dart';
import 'package:jiitak_japanese/core/pallets.dart';
import '../../../Widgets/homepage_dates.dart';
import '../../../Widgets/user_data.dart';
import 'editestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color? favoriteColor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: deviceWidth * 0.65,
                        height: deviceHeight * 0.072,
                        decoration: BoxDecoration(
                            color: pallete.grayColor,
                            borderRadius: BorderRadius.circular(30)),
                        padding: EdgeInsets.all(16),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            labelText: '北海道, 札幌市',
                            labelStyle: TextStyle(
                              fontSize: 13, // Set the desired font size
                              color: Colors.black, // Set the desired text color
                            ),
                          ),
                        ),
                      ),
                      Image.asset(Constants.filterIcon),
                      Icon(
                        Icons.favorite_border,
                        color: pallete.heartColor,
                        size: 35,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  color: pallete.orngeColor,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Center(child: Text("2022年 5月 26日（木）")),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 70,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homePageData.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 5, top: 8),
                            child: Material(
                              elevation: 3,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.14,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                decoration: BoxDecoration(
                                    color: homePageData[index].active
                                        ? pallete.orngeColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        homePageData[index].name,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ]),
                              ),
                            ),
                          )),
                ),
                Container(
                  color: Colors.white,
                  height: deviceHeight * 0.61,
                  width: deviceWidth * 0.96,
                  child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: Userdata.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          // height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(children: [
                            Stack(
                              children: [
                                Image.asset(
                                  Userdata[index]['photo'],
                                  width: deviceWidth * 0.93,
                                  height: deviceHeight * 0.23,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  bottom: 8.0,
                                  left: 0.0,
                                  child: Image.asset(Constants.tag),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: deviceHeight * 0.025,
                            ),
                            Text(Userdata[index]['TextMain']),
                            SizedBox(
                              height: deviceHeight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        Userdata[index]['Text1'],
                                        style:
                                            TextStyle(color: pallete.orange1),
                                      ))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    Userdata[index]['price'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  Userdata[index]['text3'],
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  Userdata[index]['text4'],
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Userdata[index]['text5'],
                                  style: TextStyle(color: pallete.grayColor),
                                ),
                                GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      favoriteColor = Colors.red;
                                    });
                                  },
                                  onTap: () {
                                    setState(() {
                                      favoriteColor = Colors.red;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: favoriteColor ?? pallete.grayColor,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
