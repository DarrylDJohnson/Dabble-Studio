import 'package:flutter/material.dart';

import 'link.dart';

class Project {
  final String title;
  final String description;
  final String type;
  final String asset;
  final List<String> apis;
  final List<Link> links;

  const Project({
    @required this.title,
    @required this.description,
    @required this.type,
    @required this.asset,
    this.apis = const [],
    this.links = const [],
  });
}

final List<Project> projects = [
  Project(
    asset: "assets/images/weather.png",
    title: "Dabble Weather",
    description: "Flutter app for current, hourly and daily weather forecasts.",
    type: "Flutter App",
    apis: [
      "Google Places",
      "Geolocation",
      "OpenWeatherMap",
    ],
    links: [
      Link.github("https://www.github.com/DarrylDJohnson/Weather"),
      Link.web("https://www.weather.dabble.studio"),
    ],
  ),
  Project(
    asset: "assets/images/weather_icons.png",
    title: "Dabble Weather Icons",
    description:
        "Weather icon package based on OpenWeatherMap API weather codes.",
    type: "Icon Pack",
  ),
  Project(
    asset: "assets/images/notes.png",
    title: "Dabble Notes",
    description:
        "A note taking app with cloud storage and sharable lists and notes",
    type: "Flutter App",
    apis: [
      "Firebase Authentication",
      "Firebase Realtime Database",
    ],
    links: [
      Link.web("https://www.notes.dabble.studio"),
      Link.github("https://www.github.com/DarrylDJohnson/notes"),
      Link.android(
        "https://play.google.com/store/apps/details?id=com.dabble.notes",
      )
    ],
  ),
];
