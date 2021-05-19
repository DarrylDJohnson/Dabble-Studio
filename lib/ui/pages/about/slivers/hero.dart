import 'package:flutter/material.dart';

class HeroSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height*0.6,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/about_me_bg.jpg"),
          fit: BoxFit.cover,
        )),
        child: AspectRatio(
          aspectRatio: 1440/1080,
          child: Image.asset(
            "assets/images/darryljohnson.png",
          ),
        ),
      ),
    );
  }
}
