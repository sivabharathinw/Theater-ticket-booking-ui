import "package:flutter/material.dart";
import 'package:movie_booking/ui.dart';

class TheaterAvailable extends StatelessWidget {
  const TheaterAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MovieHeader(
                    imageUrl:
                        "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
                    card: MoviCard(),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DateCard(day: "FRI", date: "12", isSelected: true),
                        SizedBox(width: 10),
                        DateCard(day: "SAT", date: "13"),
                        SizedBox(width: 10),
                        DateCard(day: "SUN", date: "14"),
                        SizedBox(width: 10),
                        DateCard(day: "MON", date: "15"),
                        SizedBox(width: 10),
                        DateCard(day: "TUE", date: "16"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppText(
                      "Imagix Cinemas: Anaheim",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      AppChip(
                        label: "09:30 AM",
                        onPressed: () {},
                      ),
                      AppChip(
                        label: "12:30 AM",
                        onPressed: () {},
                      ),
                      AppChip(
                        label: "03:30 PM",
                        onPressed: () {},
                      ),
                      AppChip(
                        label: "08:40 PM",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppText(
                      "Escape Cinemas",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      AppChip(
                        label: "10:15 AM",
                        onPressed: () {},
                      ),
                      AppChip(
                        label: "01:45 PM",
                        onPressed: () {},
                      ),
                      AppChip(
                        label: "04:20 PM",
                        onPressed: () {},
                      ),
                      AppChip(
                        label: "09:00 PM",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
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
class DateCard extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;

  const DateCard({

    required this.day,
    required this.date,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 60,
      backgroundColor:
      isSelected ? Colors.deepOrange : Colors.white,
      borderRadius: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            day,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontSize: 12,
            ),
          ),

          SizedBox(height: 5),

          AppText(
            date,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
