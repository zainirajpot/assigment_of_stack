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
      home: const MyStack(),
    );
  }
}

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.3,
      height: height * 1,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(constraints: const BoxConstraints.expand(),
             
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFECF6FF),
                    Color(0xFFCADBEB),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF3F6080).withOpacity(.2),
                    blurRadius: 32,
                    offset: const Offset(40, 20),
                  ),
                   const BoxShadow(
                      color: Color(0xFFFFFFFF),
                      blurRadius: 32,
                      offset: Offset(-20, -10),
                    ),
                ],
              ),
            ),
            
          ),
          Container(
            height: height*0.6,
            width: width*0.1,
             
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFECF6FF),
                    Color(0xFFCADBEB),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF3F6080).withOpacity(.2),
                    blurRadius: 32,
                    offset: const Offset(40, 20),
                  ),
                   const BoxShadow(
                      color: Color(0xFFFFFFFF),
                      blurRadius: 32,
                      offset: Offset(-20, -10),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
