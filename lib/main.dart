import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginUi(),
    );
  }
}

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  int index0 = 0;
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;
  int index7 = 0;
  int index8 = 0;
  int turn = 0;
  String winner = '';
  void checkPattern() async{
    bool pattern1 = index0 == 1 && index1 == 1 && index2 == 1;
    // print(pattern1);
    bool pattern2 = index0 == 1 && index3 == 1 && index6 == 1;
    bool pattern3 = index0 == 1 && index4 == 1 && index8 == 1;
    bool pattern4 = index1 == 1 && index4 == 1 && index7 == 1;
    bool pattern5 = index2 == 1 && index4 == 1 && index6 == 1;
    bool pattern6 = index2 == 1 && index5 == 1 && index8 == 1;
    bool pattern7 = index6 == 1 && index7 == 1 && index8 == 1;
    bool pattern8 = index3 == 1 && index4 == 1 && index5 == 1;

    //For 2
    bool pattern15 = index0 == 2 && index1 == 2 && index2 == 2;
    // print(pattern1);
    bool pattern9 = index0 == 2 && index3 == 2 && index6 == 2;
    bool pattern10 = index0 == 2 && index4 == 2 && index8 == 2;
    bool pattern11 = index1 == 2 && index4 == 2 && index7 == 2;
    bool pattern12 = index2 == 2 && index4 == 2 && index6 == 2;
    bool pattern13 = index2 == 2 && index5 == 2 && index8 == 2;
    bool pattern14 = index6 == 2 && index7 == 2 && index8 == 2;
    bool pattern16 = index3 == 2 && index4 == 2 && index5 == 2;
    if (pattern1 ||
        pattern2 ||
        pattern3 ||
        pattern4 ||
        pattern5 ||
        pattern6 ||
        pattern7 ||
        pattern8) {
          await Future.delayed(Duration(seconds: 1));
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text( "Player 1 wins")));
        index0 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
        index5 = 0;
        index6 = 0;
        index7 = 0;
        index8 = 0;
        turn = 0;
      });
    } else if (pattern15 ||
        pattern9 ||
        pattern10 ||
        pattern11 ||
        pattern12 ||
        pattern13 ||
        pattern14 ||
        pattern16) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text( "Player 2 wins")));
        index0 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
        index5 = 0;
        index6 = 0;
        index7 = 0;
        index8 = 0;
        turn = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index0=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index0=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index0==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index0==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index1=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index1=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index1==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index1==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index2=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index2=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index2==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index2==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index3=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index3=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index3==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index3==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index4=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index4=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index4==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index4==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index5=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index5=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index5==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index5==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index6=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index6=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index6==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index6==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index7=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index7=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index7==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index7==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if(turn==1){
                            index8=1;
                            turn=2;
                          }
                          else if(turn==2){
                            index8=2;
                            turn=1;
                          }
                          checkPattern();
                        });
                      },
                      child: index8==1?Container(
                        color: Colors.black,
                        child: Image.asset("assets/cross.png",color: Colors.white,)):index8==2?Container(
                        color: Colors.black,
                        child: Image.asset("assets/zero.png",color: Colors.white,)):Container(
                        color: Colors.black,
                      )),
                ],
              ),
            ),
           turn==0? ElevatedButton(onPressed: (){
              setState(() {
                turn=1;
              });
            }, child: Text("Start")):ElevatedButton(onPressed: (){
              setState(() {
                turn=0;
                index0 = 0;
                index1 = 0;
                index2 = 0;
                index3 = 0;
                index4 = 0;
                index5 = 0;
                index6 = 0;
                index7 = 0;
                index8 = 0;
              });
            }, child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}
