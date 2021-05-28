import 'package:dabble_studio/ui/components/responsive_container.dart';
import 'package:flutter/material.dart';

class HeroSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ResponsiveContainer(
        builder: (context, width, height){
          switch(width){
          }
        },
      ),
    );
  }
}
