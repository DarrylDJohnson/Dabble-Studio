import 'package:dabble_studio/models/service.dart';
import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

import 'components/service_card.dart';

class ServicesSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSliver.list(
      children: [
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline4,
            children: [
              TextSpan(
                text: "What we have to ",
              ),
              TextSpan(
                text: "offer.",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 16.0,
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 16.0,
            runSpacing: 16.0,
            children: List.generate(
              services.length,
              (index) => ServiceCard(service: services[index]),
            ),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.7,
          child: ListTile(
            title: Text(
              "We offer everything from discovering and defining your needs and goals to product deployment.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            child: Text("Learn more"),
            onPressed: () => Navigator.of(context).pushNamed(serviceRoute),
          ),
        ),
      ],
    );
  }
}
