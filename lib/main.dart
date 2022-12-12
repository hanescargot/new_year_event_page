import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const MyHomePage(title: 'First Method'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: null,
      body: Container(
          child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 2,
              margin: EdgeInsets.only(
                left: 20.sp,
              ),
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/party_logo_bg.png",
                width: 300.w,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 20.w, top: 1.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 55.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70.h,
                        ),
                        Text("# 2023 성수동 VIP", style: _tsHash(false)),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "# 무제한 음료",
                          style: _tsHash(false),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text("# 무제한 핑거 푸드", style: _tsHash(false)),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text("# 드레스코드 자유", style: _tsHash(false)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 240.h,
                  ),
                  // Row(
                  //   children: [
                  //     Icon(
                  //       Icons.not_listed_location_rounded,
                  //       color: Colors.white,
                  //       size: 20.w,
                  //     ),
                  //     SizedBox(
                  //       width: 8.w,
                  //     ),
                  //     Text(
                  //       "정확한 파티 장소는 일주일 전 공개됩니다.",
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.my_location,
                        color: Color.fromARGB(255, 30, 227, 36),
                        size: 20.h,
                      ),
                      Text(
                        " 성수동",
                        style: TextStyle(
                            color: Color.fromARGB(255, 30, 227, 36),
                            fontSize: 16.sp,
                            fontFamily: 'HashRoket'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.w,
                  ),
                  Text("2023.01.07", style: _tsHash(true)),
                  Text("AT 7 PM", style: _tsHash(true)),
                  Text("참가비 65,000 원", style: _tsHash(true)),
                  SizedBox(
                    height: 4.w,
                  ),
                  Text("* 일주일 전 취소시 전액 환불",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp)),
                  SizedBox(
                    height: 90.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text("Step1. 초대권 번호로 로그인",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20.sp,
                              fontFamily: 'HashRoket')),
                      // style: TextStyle(color: Colors.white)),
                      Spacer()
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.h),
                    width: MediaQuery.of(context).size.width,
                    height: 40.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        _pinNumber(),
                        _dash,
                        _pinNumber(),
                        _dash,
                        _pinNumber(),
                        SizedBox(
                          width: 12.w,
                        ),
                        Container(
                          height: 36.h,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "확인",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'HashRoket'),
                              ),
                              style: ButtonStyle(
                                  alignment: Alignment.center,
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 30, 227, 36)))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Divider(color: Colors.white, height: 2.h, indent: 20.w),
                  SizedBox(
                    height: 32.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Text("Step2. 참가자 정보 입력",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20.sp,
                                  fontFamily: 'HashRoket')),
                          // style: TextStyle(color: Colors.white)),

                          Spacer()
                        ],
                      ),

                      // 스탭 2 내용
                      SizedBox(
                        height: 24.h,
                      ),

                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "입금자 성함",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          _userDataBox(120.w, 6, false),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "연락처",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            "010",
                            style: TextStyle(color: Colors.white),
                          ),
                          _dash,
                          _userDataBox(70.w, 4, true),
                          _dash,
                          _userDataBox(70.w, 4, true),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),

                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "환불 계좌",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Container(
                            width: 240.w,
                            height: 32.h,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              // obscureText: true,
                              maxLength: 20,
                              autofocus: true,
                              autofillHints: null,
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  // hintText: "신한/123-4567-8901-23",

                                  counterText: "",
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xff08ff00)),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color:
                                            Color.fromARGB(255, 66, 125, 145)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                  Divider(color: Colors.white, height: 2.h, indent: 20.w),
                  SizedBox(
                    height: 32.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Text("Step3. 참가비 송금 후 승인 대기",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20.sp,
                                  fontFamily: 'HashRoket')),
                          // style: TextStyle(color: Colors.white)),
                          Spacer()
                        ],
                      ),
                      // 스탭 3 내용
                      SizedBox(
                        height: 24.h,
                      ),

                      Container(
                        height: 80.w,
                        width: 80.w,
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/icons8-money-box.gif",
                              width: 40.w,
                            ),
                            // Spacer(),
                          ],
                        ),

                        // todo : 계좌 복사하기, 송금 완료했어요 확인해 주세요, 취소
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "담당 매니저가 확인 중 입니다.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.sp,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24.w, bottom: 24.w),
                        height: 36.h,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "참가 취소",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'HashRoket'),
                            ),
                            style: ButtonStyle(
                                alignment: Alignment.center,
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 30, 227, 36)))),
                      )
                    ],
                  ),
                  Divider(color: Colors.white, height: 2.h, indent: 20.w),
                  SizedBox(
                    height: 32.w,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text("파티 입장 준비 완료 !",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20.sp,
                              fontFamily: 'HashRoket')),
                      // style: TextStyle(color: Colors.white)),

                      Spacer()
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 24.w, bottom: 8.w),
                    height: 36.h,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 24.w,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Image.asset(
                              "assets/images/icons8-star-unscreen.gif"),
                        )),
                  ),
                  Center(
                    child: Text(
                      "* 입장하실 때 까지 누르지 마세요!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),

            // 신청자 수
            // 참가 확정, 승인 대기,
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Container(
              padding: EdgeInsets.all(12),
              child: Image(
                image: AssetImage(
                  "assets/images/icon-kakao-talk.png",
                ),
              ))), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  TextStyle _tsHash(isGreen) => TextStyle(
      color: isGreen
          ? Color.fromARGB(255, 30, 227, 36)
          : Color.fromARGB(255, 255, 255, 255),
      fontSize: isGreen ? 24.sp : 20.sp,
      fontFamily: 'HashRoket');

  Widget _pinNumber() {
    return Container(
      width: 62.w,
      height: 38.h,
      child: TextField(
        textDirection: null,
        // obscureText: true,
        maxLength: 3,
        maxLines: 1,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            counterText: "",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff08ff00)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 66, 125, 145)),
            ),
            filled: true,
            fillColor: Colors.black),
      ),
    );
  }

  Widget _userDataBox(widthSize, maxLen, isNumber) {
    return Container(
      width: widthSize,
      height: 32.h,
      child: TextField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.name,
        textDirection: null,
        // obscureText: true,
        maxLength: maxLen,
        maxLines: 1,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            counterText: "",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff08ff00)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 66, 125, 145)),
            ),
            filled: true,
            fillColor: Colors.black),
      ),
    );
  }

  Widget _dash = Center(
    child: Text(
      " - ",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.sp,
      ),
    ),
  );
}
