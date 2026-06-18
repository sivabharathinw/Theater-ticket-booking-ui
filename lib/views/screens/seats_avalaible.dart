import "package:flutter/material.dart";
import 'package:movie_booking/ui.dart';

class SeatsAvalaible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MovieHeader(
                  height: 280,
                  imageUrl:
                      "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
                  card: MoviCard(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppContainer(
                            width: 10,
                            height: 10,
                            backgroundColor: Colors.grey.shade300,
                            borderRadius: 5,
                            padding: EdgeInsets.zero,
                            child: SizedBox(),
                          ),
                          AppText(
                            "Available",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          SizedBox(width: 15),
                          AppContainer(
                            width: 10,
                            height: 10,
                            backgroundColor: Colors.black,
                            borderRadius: 5,
                            padding: EdgeInsets.zero,
                            child: SizedBox(),
                          ),
                          SizedBox(width: 5),
                          AppText(
                            "Booked",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          SizedBox(width: 15),
                          AppContainer(
                            width: 10,
                            height: 10,
                            backgroundColor: Colors.deepOrange,
                            borderRadius: 5,
                            padding: EdgeInsets.zero,
                            child: SizedBox(),
                          ),
                          SizedBox(width: 5),
                          AppText(
                            "Your Selection",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      AppContainer(
                        width: 250,
                        height: 10,
                        borderRadius: 50,
                        backgroundColor: Colors.grey.shade200,
                        child: SizedBox(),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Seat(color: Colors.black),
                                  Seat(color: Colors.grey),
                                  SizedBox(width: 5),
                                  Seat(color: Colors.orange),
                                  Seat(color: Colors.black),
                                  Seat(color: Colors.grey),
                                  SizedBox(width: 20),
                                  Seat(color: Colors.orange),
                                  Seat(color: Colors.black),
                                  Seat(color: Colors.grey),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 15),

                      AppContainer(
                        width: 280,
                        height: 50,
                        backgroundColor: Colors.deepOrange,
                        borderRadius: 25,
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.confirmation_num_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            AppText(
                              "x2",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 15),
                            AppContainer(
                              width: 1,
                              height: 30,
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.zero,
                              child: SizedBox(),
                            ),
                            SizedBox(width: 60),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    AppText(
                                      "TOTAL",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                      ),
                                    ),
                                    AppText(
                                      "PAYABLE:",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8),
                                AppText(
                                  "\$25",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            AppContainer(
                              width: 50,
                              height: 50,
                              backgroundColor: Colors.white,
                              borderRadius: 25,
                              padding: EdgeInsets.zero,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Seat extends StatelessWidget {
  final Color color;

  const Seat({required this.color});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 20,
      height: 20,
      margin: EdgeInsets.all(4),
      backgroundColor: color,
      borderRadius: 4,
      padding: EdgeInsets.zero,
      child: SizedBox(),
    );
  }
}

class MoviCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppContainer(
      borderRadius: 16,
      backgroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            "Ant Man and The Wasp",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: AppContainer(
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  borderRadius: 20,
                  backgroundColor: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: false,
                        value: "FRIDAY, 12",
                        icon: Icon(Icons.keyboard_arrow_down, size: 14),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        items: [
                          DropdownMenuItem(
                            value: "FRIDAY, 12",
                            child: Text("FRIDAY, 12"),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: AppContainer(
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  borderRadius: 20,
                  backgroundColor: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: false,
                        value: "09:30 AM",
                        icon: Icon(Icons.keyboard_arrow_down, size: 14),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        items: [
                          DropdownMenuItem(
                            value: "09:30 AM",
                            child: Text("09:30 AM"),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          AppContainer(
            height: 25,
            padding: EdgeInsets.symmetric(horizontal: 10),
            borderRadius: 20,
            backgroundColor: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            child: Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: false,
                  value: "Imagix Cinemas: Anaheim",
                  icon: Icon(Icons.keyboard_arrow_down, size: 14),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  items: [
                    DropdownMenuItem(
                      value: "Imagix Cinemas: Anaheim",
                      child: Text("Imagix Cinemas: Anaheim"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
