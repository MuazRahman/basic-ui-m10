import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    late Size mq  = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('My Profile'),
        actions: [
          IconButton(icon: const Icon(Icons.add),onPressed: () {},),
          IconButton(icon: const Icon(Icons.settings),onPressed: () {},),
          IconButton(icon: const Icon(Icons.call),onPressed: () {},),
        ],
      ),
      body: Stack(
        children: [
          // Ice Cream Icon
          Positioned(
              top: mq.height * 0.02,
              width: mq.width * 0.5,
              left: mq.width * 0.25,
              child: Center(child: CircleAvatar(maxRadius: mq.height * 0.10,child: Icon(Icons.icecream_outlined,size: mq.height * 0.10,),))),
          // Text after first Icon
          Positioned(
            top: mq.height * 0.23,
            left: 0,
            right: 0,
            child: const Center(child: Text('Ice cream is very delicious right?', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18),)),),
          // Angular bracket Icon
          Positioned(
              // top: mq.height * 0.01,
              top: mq.height * 0.32,
              width: mq.width * 0.5,
              left: mq.width * 0.25,
              child: CircleAvatar(maxRadius: mq.height * 0.10,child: Icon(Icons.code,size: mq.height * 0.10,),)),
          // Text after second Icon
          Positioned(
            // top: mq.height * 0.18,
            top: mq.height * 0.53,
            left: 0,
            right: 0,
            child: const Center(child: Text('Programming is not boring if you love it', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),),
          // Egg Icon
          Positioned(
            // top: mq.height * 0.01,
              top: mq.height * 0.62,
              width: mq.width * 0.5,
              left: mq.width * 0.25,
              child: CircleAvatar(maxRadius: mq.height * 0.10,child: Icon(Icons.egg_outlined,size: mq.height * 0.10,),)),
          // Text after second Icon
          Positioned(
            // top: mq.height * 0.18,
            top: mq.height * 0.82,
            left: 0,
            right: 0,
            child: const Center(child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('If you submit code directly copy from Chatgpt then mark will 0', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18),),
            )),),
        ],
      ),
    );
  }
}


