import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stack demo",
      theme: ThemeData(),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg"),
                    ),
                  ),
                ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.orange,
                    size: 40,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Get Discount",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    width: 400,
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_box_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "This is nature anadsf ad asdf adf asdf asdf",
                                maxLines: 5,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "what a beautiful pics",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
