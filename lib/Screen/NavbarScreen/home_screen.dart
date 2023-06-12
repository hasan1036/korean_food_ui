import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.home, color: Color(0xff191919),)),
        title: Text("행스 홈", style: TextStyle(color: Color(0xff191919),),),
        actions: [

          IconButton(onPressed: (){}, icon:Icon(Icons.menu_outlined, color: Color(0xff191919),)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search, color: Color(0xff191919),)),
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications, color: Color(0xff191919),)),

        ],


      ),
      body: Center(child: Text("Home Screen")),

    );
  }
}
