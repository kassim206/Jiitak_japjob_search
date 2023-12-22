import 'package:flutter/material.dart';

class homePage{
  final String name;
  final bool active;

  homePage({required this.name,  required this.active});
}

//data
List homePageData = [

  homePage(name: "木\n26", active: true),
  homePage(name: "金\n27", active: false),
  homePage(name: "土\n28", active: false),
  homePage(name: "日\n29",  active: false),
  homePage(name: "月\n30",  active: false),
  homePage(name: "火\n31",  active: false),
  homePage(name: "水\n1",  active: false),
];
