import 'package:flutter/material.dart';
import 'package:movie_booking/ui.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> movies = [
    {
      "name": "Black Widow",
      "duration": "1h 22m",
      "image":
      "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",
    },
    {
      "name": "Avengers",
      "duration": "1h 42m",
      "image":
      "https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg",
    },
    {
      "name": "Shang Chi",
      "duration": "1h 26m",
      "image":
      "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
    },
    {
      "name": "The Tomorrow",
      "duration": "1h 50m",
      "image":
      "https://image.tmdb.org/t/p/w500/AoWY1gkcNzabh229Icboa1Ff0BM.jpg",
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
              SizedBox(height: 2.0),
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

        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 350,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 55,
                      top: 60,
                      child: MoviePoster(
                        opacity: 0.6,
                        width: 230,
                        height: 240,

                        image:
                        "https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg",
                      ),
                    ),

                    Positioned(
                      left: 30,
                      top: 30,
                      child: MoviePoster(
                        opacity: 0.8,
                        width: 230,
                        height: 295,
                        image:
                        "https://image.tmdb.org/t/p/w500/d08HqqeBQSwN8i8MEvpsZ8Cb438.jpg",
                      ),
                    ),
                    MoviePoster(
                      image:
                      "https://image.tmdb.org/t/p/w500/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg",

                      height: 380,
                      width: 230,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  AppText(
                    "All Movies",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: AppText(
                      "View All",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];

                    return AppContainer(
                      width: 130,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.zero,
                      borderRadius: 18,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.network(
                                movie["image"]!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  movie["name"]!,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                AppText(
                                  movie["duration"]!,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MoviePoster extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final double opacity;

  const MoviePoster({
    super.key,
    required this.image,
    this.width = 250,
    this.height = 340,
    this.opacity = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Opacity(
        opacity: opacity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 15,
                offset: Offset(7, 7),
              ),
            ],
          ),
          child: AppContainer(
            padding: EdgeInsets.zero,
            borderRadius: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}