import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
// import 'package:flutter/widgets.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

_navigatetohome()async{
  await Future.delayed(Duration(milliseconds: 1500), () {});
  Navigator.pushReplacement(
    context, 
    MaterialPageRoute(
      builder: (context)=>OrderPage()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF3B60CE),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // SizedBox(height: 50),
        Center(
          child: Image.asset(
            'lib/assets/images/1.png',
            width: 110,
            height: 110,
          ),
        ),
        // SizedBox(height: 100),
        // Row(
        //   children: [
        //     Text(
        //       'Fla',
        //       style: TextStyle(
        //         fontSize: 30,
        //       ),
        //     ),
        //     Icon(
        //       Icons.bolt,
        //       size: 100,
        //       color: Color(0xFFE5FF70),
        //     ),
        //     Text(
        //       'hMover',
        //       style: TextStyle(
        //         fontSize: 30,
        //       ),
        //     )
        //   ],
        // )
      ]),
    );
  }
}