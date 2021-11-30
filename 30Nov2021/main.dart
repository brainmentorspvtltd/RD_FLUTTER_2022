import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "First App",
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple.shade900,
              Colors.deepPurpleAccent,
            ],
          ),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://www.urgentcaremds.com/wp-content/uploads/2014/07/urgent-care-doctor-lady-small.png",
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Complete \nHealth \nSolutions",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Eaely protection for \neamily health",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                SizedBox(
                  height: 35,
                  width: 120,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.deepPurple),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text("Get Started",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                          )),
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
