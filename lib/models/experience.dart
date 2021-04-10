import 'package:flutter/material.dart';

class Experience {
  final String title;
  final String role;
  final String year;
  final Map<String, String> experiences;

  Experience({
    @required this.title,
    this.experiences = const {},
    this.role = '',
    this.year = ''
  });
}

final List<Experience> developerExperience = [
  Experience(
    title: "Flutter",
    role: "Freelance",
    year: "2018",
    experiences: {
      "General":
          "Regularly codes in Dart, and codes in native IOS and Android languages when required. Strictly adheres to BLoC pattern for state management to produce quality maintainable code. Develops reusable widgets, classes and libraries for common processes and UI components. Offers a custom navigator for single-screen apps, and the original navigator for multi-screen apps. Ensures quality assurance with Test Driven Development.",
      "UI/UX":
          "Provides custom UI designs. Optimizes widget state management for performance.",
      "Backend":
          "Regularly uses Firebase cloud services. Has integrated different RESTful APIs across projects based on requirements.",
      "VCS": "Git, Github",
      "APIs":
          "Google (Places, Geolocator, Realtime Database, Cloud Firestore, Authentication, Cloud Messaging, Storage), Facebook, AWS, ZOHO, QuickBooks, OpenWeather,",
    },
  ),
  Experience(
    title: "Android",
    role: "Mentorship",
    year: "2016",
    experiences: {
      "General":
          "Regularly codes with Kotlin and uses high order lambda functions in Android Studio. Adheres to MVP architecture for easy navigation and maintainable code. Develops reusable and reliable Kotlin and Java code for common processes and views. Ensures quality assurance with Test Driven Development using Mockito, Espresso and JUnit.",
      "UI/UX":
          "Follows Material Theme and Material Design Guidelines custom user experiences. Optimizes XML layout hierarchy for improved performance.",
      "Backend":
          "Regularly uses Firebase cloud services. Has used Realm + Parceler for local storage, and some AWS. Builds intuitive models in Java and managers for simple database management. Strategically designs and implements relational database structures.",
      "VCS": "Git, Github and Bitbucket",
      "APIs": "Google, Facebook, AWS, Retrofit, Glide, OkHttp, Dagger"
    },
  ),
];
