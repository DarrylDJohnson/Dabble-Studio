import 'package:dabble_studio/models/experience.dart';
import 'package:flutter/material.dart';

class ExperienceTile extends StatelessWidget {
  final Experience experience;

  const ExperienceTile({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              experience.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(experience.role),
            trailing: Text(experience.year),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var element = experience.experiences.entries.elementAt(index);
              return ListTile(
                title: Text(element.key),
                subtitle: Text(element.value),
              );
            },
            itemCount: experience.experiences.length,
          )
        ],
      ),
    );
  }
}
