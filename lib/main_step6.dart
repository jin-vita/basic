// 모듈 가져오기
import 'dart:ui';

import 'package:flutter/material.dart';

// 메인 함수
void main() {
  // 앱 실행
  runApp(const MyApp());
}

// 앱 정의 : 위젯을 상속한다.
// 위젯 : 화면에 보이는 모든 것 - 2가지로 구분됨 : StatelessWidget, StatefulWidget
// StatefulWidget : 속성을 가질 수 있는 것 (속성 - 변수 - 상태)
class MyApp extends StatelessWidget {
  // 생성자 함수
  const MyApp({super.key});

  // 화면 구성을 위한 함수
  @override
  Widget build(BuildContext context) {
    // 화면 전체를 표시하는 MaterialApp 위젯을 반환함
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

// 상태를 가질 수 있는 위젯 클래스
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // 속성을 가질 수 있는 클래스로부터 객체를 만드는 함수
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 속성(변수)을 가질 수 있는 클래스를 정의한다.
class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // 스캐폴드(화면의 기본 구조를 잡아주는 것)를 반환한다.
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인 화면'),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        // 여러 개의 자식 위젯을 가질 수 있는 것 (세로 방향)
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse}),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  color: Colors.amber,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 500,
                            height: 100,
                            color: Colors.blue,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            alignment: Alignment.center,
                            child: const Text(
                              "안녕",
                            ),
                          ),
                          Container(
                            width: 500,
                            height: 100,
                            color: Colors.blue,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: const Text(
                              "안녕",
                            ),
                          ),
                          Container(
                            width: 500,
                            height: 100,
                            color: Colors.blue,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: const Text(
                              "안녕",
                            ),
                          ),
                        ],
                      ))),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 30.0),
                margin: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: const Text('안녕 1',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 30.0,
                    )),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 30.0),
                margin: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: const Text('안녕 2',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 30.0,
                    )),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 30.0),
                margin: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: const Text('안녕 3',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 30.0,
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
