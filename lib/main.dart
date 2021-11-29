import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "First App",
      //

      home: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            // leading: IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.menu),
            // ),
            title: Text("My App"),
            centerTitle: false,
            actions: [Icon(Icons.more_vert)],
          ),
          backgroundColor: Colors.lightGreen.shade300,
          // body: Center(
          //   child: Container(
          //     alignment: Alignment.center,
          //     width: 200,
          //     height: 200,
          //     color: Colors.blue.shade900,
          //     child: const Text(
          //       "Hello",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 40,
          //         fontWeight: FontWeight.bold,
          //         // backgroundColor: Colors.yellow,
          //         letterSpacing: 4,
          //       ),
          //     ),
          //   ),
          // ),

          //   body: Center(
          //     child: SizedBox(
          //       height: 500,
          //       width: 300,
          //       child: Card(
          //         elevation: 10,
          //         child: Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 20),
          //           child: Column(
          //             children: [
          //
          //                 CircleAvatar(
          //                   radius: 30,
          //                 ),
          //
          //
          //               SizedBox(
          //                 height: 150,
          //                 width: double.infinity,
          //                 child: DecoratedBox(
          //                   decoration: BoxDecoration(
          //                     color: Colors.green.shade900,
          //                   ),
          //                   child: Center(
          //                       child: Text(
          //                     "Some product name",
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 30,
          //                     ),
          //                   )),
          //                 ),
          //               ),
          //               Icon(
          //                 Icons.eighteen_mp_outlined,
          //                 size: 50,
          //               ),
          //               FittedBox(
          //                 child: Text(
          //                   "Another value",
          //                   style: TextStyle(fontSize: 50),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          //   floatingActionButton: FloatingActionButton(
          //     onPressed: () {},
          //     child: Icon(
          //       Icons.search,
          //     ),
          //   ),
          // ),

          body: Center(
            child: Row(
              children: [
                Icon(
                  Icons.ten_k_outlined,
                  size: 40,
                ),
                Text(
                  "Text",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          )
          // body: Center(
          //   child: Container(
          //     height: 450,
          //     width: 300,
          //     //  color: Colors.red, it could raised error if using with decoration property
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.deepOrange,
          //       border: Border.all(
          //         width: 3,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          ),
    ),
  );
}
