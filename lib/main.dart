import 'package:flutter/material.dart';
import 'package:movie_booking/views/screens/available_theater_screen.dart';
import 'package:movie_booking/views/screens/home_page.dart';
import 'package:movie_booking/views/screens/movie_search_screen.dart';
import 'package:movie_booking/views/screens/seats_avalaible.dart';
import 'package:movie_booking/views/screens/settings_screen.dart';

void main() {
  final index = 3;
  if (index == 0) {
    runApp(HomeScreen());
  }
  else if (index == 1) {
    runApp(MovieSearchScreen());
  }
  else if (index == 2) {
    runApp(TheaterAvailable());
  }
  else if (index == 3) {
    runApp(SeatsAvalaible());
  }
  else {
    runApp(SettingsScreen());
  }
}



