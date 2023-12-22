import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_japanese/core/constants.dart';
import 'package:jiitak_japanese/core/pallets.dart';

import '../../../core/global_variable.dart';

class EditStorProfile extends StatefulWidget {
  const EditStorProfile({super.key});

  @override
  State<EditStorProfile> createState() => _EditStorProfileState();
}

class Question {
  final String question;

  Question(this.question);
}

class _EditStorProfileState extends State<EditStorProfile> {
  String? dropdownValue;
  final List<Question> questions = [
    Question("店舗名*"),
    Question("代表担当者名*"),
    Question("林田　絵梨花"),
    Question("店舗電話番号*"),
    Question("店舗住所*"),
  ];
  bool valuefirst = false;
  bool valuethred = false;
  bool valuesecond = false;
  bool valuefour = false;
  bool valuefive = false;
  bool valueeight = true;
  bool valuesix = true;
  bool valueseven = true;
  bool valuea = true;
  bool valueb = false;
  bool valuec = true;
  bool valued = false;
  bool valuee = true;
  bool valuef = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            CupertinoIcons.back,
            color: Colors.white,
            size: deviceWidth * 0.07,
          ),
        ),
        title: Text(
          '店舗プロフィール編集',
          style: TextStyle(fontSize: 18),
        ),
        actions: [InkWell(onTap: () {}, child: Icon(CupertinoIcons.bell))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: deviceHeight * 0.57,
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          questions[index].question,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: deviceHeight * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: " ",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: deviceHeight * 0.3,
              width: deviceWidth * deviceWidth,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  Constants.map,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                // First Row
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: deviceWidth * 0.25,
                        height: deviceHeight * 0.15,
                        color: Colors.white,
                        child: Image.asset(
                          Constants.img1,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      child: Image.asset(
                        Constants.img1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: deviceHeight * 0.02,
                          ),
                          const Center(
                              child: Icon(
                            Icons.image_outlined,
                            size: 38,
                            color: Colors.grey,
                          )),
                          Text(
                            '写真を追加',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: deviceWidth * 0.04),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Text above Second Row
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '店舗内観*',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                // Second Row
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: deviceWidth * 0.25,
                        height: deviceHeight * 0.15,
                        color: Colors.white,
                        child: Image.asset(Constants.img2),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Image.asset(
                        Constants.img2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Image.asset(Constants.img2),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Text above Third Row
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '店舗内観*',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 8),
                // Third Row
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: deviceWidth * 0.25,
                        height: deviceHeight * 0.115,
                        color: Colors.red,
                        child: Image.asset(Constants.img5),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Image.asset(
                        Constants.fish,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Image.asset('assets/icons/cake.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Third Row
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '店舗内観*',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: deviceWidth * 0.25,
                        height: deviceHeight * 0.15,
                        color: Colors.white,
                        child: Image.asset(Constants.ice),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Image.asset(Constants.dry),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: deviceWidth * 0.25,
                      height: deviceHeight * 0.15,
                      color: Colors.white,
                      child: Image.asset(Constants.cocacola),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Column(
                  children: [
                    // Text above Second Row
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '営業時間*',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Second Row
                    Row(
                      children: [
                        Container(
                          width: deviceWidth * 0.25,
                          height: deviceHeight * 0.1,
                          color: Colors.white,
                          child: DropdownButtonFormField<String>(
                            hint: const Text('10:00'),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['10:00', '11:00', '15:00', '20:00']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(width: 3),
                        Text('~'),
                        const SizedBox(width: 3),
                        Container(
                          width: deviceWidth * 0.25,
                          height: deviceHeight * 0.1,
                          color: Colors.white,
                          child: DropdownButtonFormField<String>(
                            hint: const Text('20:00'),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['10:00', '11:00', '15:00', '20:00']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Text above Third Row
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '定休日*',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Third Row
                    Row(
                      children: [
                        Container(
                          width: deviceWidth * 0.25,
                          height: deviceHeight * 0.1,
                          color: Colors.white,
                          child: DropdownButtonFormField<String>(
                            hint: const Text('11:00'),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['10:00', '11:00', '15:00', '20:00']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: deviceWidth * 0.25,
                          height: deviceHeight * 0.1,
                          color: Colors.white,
                          child: DropdownButtonFormField<String>(
                            hint: const Text('15:00'),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['10:00', '11:00', '15:00', '20:00']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    // Third Row
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Container(
                  child: Container(
                      child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valuefirst,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuefirst = value!;
                              });
                            },
                          ),
                          Text(
                            '月',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valuesecond,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuesecond = value!;
                              });
                            },
                          ),
                          Text(
                            '火',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valuethred,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuethred = value!;
                              });
                            },
                          ),
                          const Text(
                            '水',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valuefour,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuefour = value!;
                              });
                            },
                          ),
                          const Text(
                            '木',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valuefive,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuefive = value!;
                              });
                            },
                          ),
                          const Text(
                            '金',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valuesix,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuesix = value!;
                              });
                            },
                          ),
                          const Text(
                            '土',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valueseven,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valueseven = value!;
                              });
                            },
                          ),
                          const Text(
                            '日',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: pallete.orngeColor,
                            value: this.valueeight,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valueeight = value!;
                              });
                            },
                          ),
                          const Text(
                            '祝',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
              ), //Card
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                // width: deviceWidth*0.95,
                color: Colors.white,
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '料理カテゴリー*',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: deviceWidth * 0.65,
                        height: deviceHeight * 0.1,
                        color: Colors.white,
                        child: DropdownButtonFormField<String>(
                          hint: const Text(
                            '料理カテゴリー選択',
                            style: TextStyle(color: Colors.grey),
                          ),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            '料理カテゴリー*',
                            '料理カテゴリー*',
                            '料理カテゴリー選択',
                            ''
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '予算*',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Row(
                      children: [
                        Container(
                          width: deviceWidth * 0.3,
                          height: deviceHeight * 0.08,
                          color: Colors.white,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "¥ 1,000！",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          child: Text('~'),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: deviceWidth * 0.3,
                          height: deviceHeight * 0.08,
                          color: Colors.white,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "¥ 2,000",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'キャッチコピー*',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Container(
                      width: deviceWidth * 0.95,
                      height: deviceHeight * 0.068,
                      color: Colors.white,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "美味しい！リーズナブルなオムライスランチ！",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '座席数*',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Container(
                      width: deviceWidth * 0.95,
                      height: deviceHeight * 0.068,
                      color: Colors.white,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "40席",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.03,
                    ),
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            '喫煙席*',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: pallete.orngeColor,
                                value: this.valuea,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valuea = value!;
                                  });
                                },
                              ),
                              const Text(
                                '月',
                                style: TextStyle(fontSize: 17.0),
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: pallete.orngeColor,
                                value: this.valueb,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valueb = value!;
                                  });
                                },
                              ),
                              const Text(
                                '火',
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: pallete.orngeColor,
                                value: this.valuec,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valuec = value!;
                                  });
                                },
                              ),
                              const Text(
                                '月',
                                style: TextStyle(fontSize: 17.0),
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: pallete.orngeColor,
                                value: this.valued,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valued = value!;
                                  });
                                },
                              ),
                              const Text(
                                '火',
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: pallete.orngeColor,
                                value: this.valuee,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valuee = value!;
                                  });
                                },
                              ),
                              const Text(
                                '月',
                                style: TextStyle(fontSize: 17.0),
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: pallete.orngeColor,
                                value: this.valuef,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valuef = value!;
                                  });
                                },
                              ),
                              const Text(
                                '火',
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Column(
                        children: [
                          // First Row
                          Row(
                            children: [
                              Container(
                                width: deviceWidth * 0.25,
                                height: deviceHeight * 0.15,
                                color: Colors.white,
                                child: Image.asset(Constants.ice),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: deviceWidth * 0.25,
                                height: deviceHeight * 0.15,
                                color: Colors.white,
                                child: Image.asset(Constants.dry),
                              ),
                              SizedBox(width: 8),
                              Container(
                                width: deviceWidth * 0.25,
                                height: deviceHeight * 0.15,
                                color: Colors.white,
                                child: Image.asset(Constants.cocacola),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          // Text above Second Row
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'キャッチコピー*',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Container(
                      width: deviceWidth * 0.95,
                      height: deviceHeight * 0.068,
                      color: Colors.white,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "美味しい！リーズナブルなオムライスランチ！",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red[300]!),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.all(16)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0), // Set border radius
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(
                            8), // Set elevation
                      ),
                      child: const Center(child: Text('  編集を保存  ')),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
