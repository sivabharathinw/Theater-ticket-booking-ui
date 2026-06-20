import "package:flutter/material.dart";
import 'package:movie_booking/ui.dart';

class TheaterAvailable extends StatelessWidget {
  const TheaterAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {},
          child: Icon(Icons.arrow_forward, color: Colors.white),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieHeader(
                  imageUrl:
                      "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
                  card: MoviCard(),
                ),
                SizedBox(height: 18),

                Padding(
                  padding: EdgeInsets.all(2),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
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

                      SizedBox(height: 24),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            "Imagix Cinemas: Anaheim",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Wrap(
                            spacing: 10,
                            children: [
                              AppChip(label: "09:30 AM", onPressed: () {}),
                              AppChip(label: "12:30 AM", onPressed: () {}),
                              AppChip(label: "03:30 PM", onPressed: () {}),
                              AppChip(label: "08:40 PM", onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            "Escape Cinemas",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Wrap(
                            spacing: 10,
                            children: [
                              AppChip(label: "09:30 AM", onPressed: () {}),
                              AppChip(label: "12:30 AM", onPressed: () {}),
                              AppChip(label: "03:30 PM", onPressed: () {}),
                              AppChip(label: "08:40 PM", onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            "Cineplex Movies",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Wrap(
                            spacing: 10,
                            children: [
                              AppChip(label: "09:30 AM", onPressed: () {}),
                              AppChip(label: "12:30 AM", onPressed: () {}),
                              AppChip(label: "03:30 PM", onPressed: () {}),
                              AppChip(label: "08:40 PM", onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
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

class MoviCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppContainer(
      borderRadius: 20,
      backgroundColor: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText(
            "Ant Man and the Wasp",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon(
                icon: Icons.star_border,
                size: 16,
                iconColor: Colors.grey,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 5),
              AppText(
                "4.9",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(width: 15),
              AppIcon(
                icon: Icons.access_time,
                size: 16,
                iconColor: Colors.grey,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 5),
              AppText(
                "111 mins",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(width: 15),
              AppIcon(
                icon: Icons.theaters_outlined,
                size: 16,
                iconColor: Colors.grey,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 5),
              AppText(
                "IMAX 3D",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(color: Colors.grey.shade200, thickness: 1),
          SizedBox(height: 15),
          Row(
            children: [
              AppText(
                "Synopsis",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              AppContainer(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                borderRadius: 20,
                backgroundColor: Colors.grey.shade100,
                child: AppText(
                  "Action",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              SizedBox(width: 8),
              AppContainer(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                borderRadius: 20,
                backgroundColor: Colors.grey.shade100,
                child: AppText(
                  "Adventure",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          AppText(
            "Scott Lang is grappling with the consequence superhero and a father. Approached by Hope van Dyne and Dr. Hank Pym, Lang must once again don ...",
            style: TextStyle(color: Colors.grey, fontSize: 10, height: 1.5),
          ),
          SizedBox(height: 15),
          AppContainer(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 2),
            borderRadius: 20,
            backgroundColor: Colors.grey.shade100,
            child: AppIcon(
              icon: Icons.keyboard_arrow_down,
              iconColor: Colors.grey,
              size: 24,
              backgroundColor: Colors.transparent,
            ),
          ),
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
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 15),
      child: AppContainer(
        width: 60,
        backgroundColor: Colors.white,
        borderRadius: 15,
        padding: EdgeInsets.zero,
        border: Border.all(
          color: isSelected ? Colors.blue.shade300 : Colors.grey.shade200,
          width: isSelected ? 2.0 : 1.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              day,
              style: TextStyle(
                color: isSelected ? Colors.black87 : Colors.grey,
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            SizedBox(height: 5),
            AppText(
              date,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
