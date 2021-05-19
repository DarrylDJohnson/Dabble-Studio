import 'package:flutter/material.dart';

class Content {
  final String title;
  final String description;
  final String photoUrl;

  const Content({
    @required this.title,
    this.description = '',
    this.photoUrl = '',
  });
}

const discussionContent = [
  Content(
      title: "Tell me about yourself",
      description: "Tell me about your business, goals and desires."),
  Content(
      title: "Tell me about your customers",
      description:
          "Let's figure out who you're targeting and determine their needs, behaviors and motivations."),
  Content(title: "How can we bring you closer together?", description: ""),
];

const designContent = [
  Content(
      title: "Story",
      description:
          "Walk through a day in the life of your user so we can make a process."),
  Content(
      title: "Wireframe",
      description: "Get a rough take on what that process looks like."),
  Content(title: "Prototype", description: ""),
];

const developContent = [
  Content(title: "Backend"),
  Content(title: "APIs"),
  Content(title: "Develop"),
];

const deployContent = [
  Content(title: "Test"),
  Content(title: "Test again"),
  Content(title: "Keep testing!"),
];