import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, //그림자 없애기
          centerTitle: true, //가운데 정렬
          title: Text(
            '오늘의 할 일',
            style:TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            )
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8),
          children: [ //1번 카드
              Container(
                child:Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left:16, top:8, right:16, bottom:8),
                      decoration:BoxDecoration(
                        color: Color(0xFF24A19C),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8), topRight: Radius.circular(8) ,
                        )
                      ),
                      child:Row(
                        children: [
                          Image.asset(
                            'Assets/flag.png',
                            width: 14,
                            height: 14,
                          ),
                          SizedBox(width:8),
                          Text(
                            '6월 토익 대비',
                            style: TextStyle(
                              color:Colors.white
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'Assets/dot.png',
                            width: 14,
                            height: 14,
                          )
                        ],
                      )
                    ), //1번 카드 상단
                    Container(
                      padding: EdgeInsets.only(left:18, top:18),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      if(value != null)
                                        isChecked = value;
                                      }
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  activeColor: Color(0xFF24A19C),
                                ),
                                Text(
                                  '토익 모의고사 #1',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF333333),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ), //1번 카드 중앙
                    Container(
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                              indent: 16, endIndent: 16,
                              height: 22,
                              color: Color(0xFFE0E5ED),
                              thickness: 0.5
                          ),
                          Container(
                            padding: EdgeInsets.only(left:16, right:16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'Assets/alarm.png',
                                  width: 14,
                                  height: 14,
                                ),
                                SizedBox(width:8),
                                Text(
                                  '08:30 PM',
                                  style: TextStyle(
                                    color: Color(0xFFFF486A)
                                  )
                                ),
                                Spacer(),
                                Text(
                                  '~ 2023.05.31',
                                  style: TextStyle(
                                    color: Color(0xFF767E8C)
                                  )
                                ),
                                SizedBox(width:8),
                              ]
                            )
                          )
                        ],
                      )
                    ) //1번 카드 하단
                  ],
                ),
                height: 138,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x24B6BFCB),
                      blurRadius: 29, // B: 29
                      offset: Offset(0, 5), // X: 0, Y: 5
                    ),
                    BoxShadow(
                      color: Color(0x2E9AAAC1),
                      blurRadius: 54, // B: 54
                      offset: Offset(0, 5.86), // X: 0, Y: 5.86
                    ),
                  ],
                ),
              ),
          ], //1번 카드
        )
        )
      );
  }
}
