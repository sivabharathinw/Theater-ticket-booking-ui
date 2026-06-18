import 'package:flutter/material.dart';
import 'package:movie_booking/ui.dart';

class MovieSearchScreen extends StatelessWidget {
  MovieSearchScreen({super.key});
  final List<Map<String, String>> movies = [
    {
      "title": "Black Widow",
      "duration": "1h 12m",
      "image":
          "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
    },
    {
      "title": "Avengers",
      "duration": "1h 42m",
      "image":
          "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
    },
    {
      "title": "Shang Chi",
      "duration": "1h 24m",
      "image":
          "https://image.tmdb.org/t/p/w500/AoWY1gkcNzabh229Icboa1Ff0BM.jpg",
    },
    {
      "title": "The Tomorrow War",
      "duration": "1h 12m",
      "image":
          "https://image.tmdb.org/t/p/w500/34nDCQZwaEvsy4CFO5hkGRFDCVU.jpg",
    },
    {
      "title": "Mortal Kombat",
      "duration": "1h 42m",
      "image":
          "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
    },
    {
      "title": "The Witches",
      "duration": "1h 24m",
      "image":
          "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
    },
    {
      "title": "F9",
      "duration": "1h 12m",
      "image":
          "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
    },
    {
      "title": "Godzilla vs. Kong",
      "duration": "1h 42m",
      "image":
          "https://image.tmdb.org/t/p/w500/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg",
    },
    {
      "title": "Venom",
      "duration": "1h 24m",
      "image":
          "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppbar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 0,
            children: [
              AppText(
                "Now showing..",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                height: 0.7,
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText(
                    "Movies in Ananeium",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    height: 0.6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: AppIcon(
                      icon: Icons.keyboard_arrow_down,
                      size: 16,
                      iconColor: Colors.grey,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ],
          ),

          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: ProfileAvatar(
                imageUrl:
                    "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0,vertical :16.0),
          child: Column(
            children: [
              AppContainer(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                backgroundColor: Colors.white,
                borderRadius: 30,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search movies or theatres',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                      child: AppIcon(
                        icon: Icons.search,
                        iconColor: Colors.grey,
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 16,
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 35),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    "All Movies",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      AppText(
                        "Filters",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      SizedBox(width: 6),
                      AppIcon(
                        icon: Icons.sort,
                        size: 20,
                        iconColor: Colors.black,
                        backgroundColor: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.55,
                  children: movies.map((movie) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AppContainer(
                            padding: EdgeInsets.zero,
                            borderRadius: 12,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                movie["image"]!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                errorBuilder: (context, error, stackTrace) =>
                                    AppContainer(
                                      backgroundColor:
                                          Colors.grey[300] ?? Colors.grey,
                                      padding: EdgeInsets.zero,
                                      child: Center(
                                        child: Icon(
                                          Icons.movie,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        AppText(
                          movie["title"]!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 1),
                        AppText(
                          movie["duration"]!,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
