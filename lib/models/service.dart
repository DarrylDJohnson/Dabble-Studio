import 'package:flutter/material.dart';

class Service {
  final String title;
  final String asset;
  final String description;

  Service({
    @required this.title,
    @required this.asset,
    this.description,
  });
}

final List<Service> services = [
  Service(
    asset: "icons/systems.svg",
    title: "Design Systems",
    description: "We work with you to discover ways to save you time and money with software."
  ),
  Service(
    asset: "icons/wireframing.svg",
    title: "Wireframing",
    description: "Conceptualizing the way you navigate through processes."
  ),
  Service(
    asset: "icons/design.svg",
    title: "Product Design",
    description: "Determining a consistent theme and style personalized for your business."
  ),
  Service(
    asset: "icons/prototyping.svg",
    title: "Prototyping",
    description: "Building basic functionality."
  ),
  Service(
    asset: "icons/development.svg",
    title: "Flutter Development",
    description: "Complete development of the cross-platform application."
  ),
  Service(
    asset: "icons/testing.svg",
    title: "Testing",
    description: "Unit and user testing to refine functionality and improve processes."
  ),
];
