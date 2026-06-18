import "package:flutter/material.dart";
import 'package:movie_booking/ui.dart';

class SeatsAvalaible extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MovieHeader(
                  imageUrl:
                      "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
                  card: MoviCard(),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppContainer(
                      width: 10,
                      height: 10,
                      backgroundColor: Colors.grey,
                      borderRadius: 5,
                      padding: EdgeInsets.zero,
                      child: SizedBox(),
                    ),
                    SizedBox(width: 5),
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
                  backgroundColor: Colors.grey,
                  child: SizedBox(),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 20,
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
                Spacer(),
                SizedBox(height: 20),

                AppContainer(
                  height: 65,
                  backgroundColor: Colors.deepOrange,
                  borderRadius: 35,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      SizedBox(width: 15),
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
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            "TOTAL PAYABLE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          AppText(
                            "\$25",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
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

  const Seat({ required this.color});

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
      borderRadius: 20,
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            "Ant Man and The Wasp",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 15),

          Row(
            children: [
              Expanded(
                child: AppChip(label: "Friday, 12", onPressed: () {}),
              ),

              SizedBox(width: 10),

              Expanded(
                child: AppChip(label: "09:30 AM", onPressed: () {}),
              ),
            ],
          ),

          SizedBox(height: 10),

          AppChip(label: "Imagix Cinemas: Anaheim", onPressed: () {}),
        ],
      ),
    );
  }
}
