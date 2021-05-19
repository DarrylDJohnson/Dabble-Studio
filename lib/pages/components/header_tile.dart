import 'package:flutter/material.dart';

class HeaderTile extends StatelessWidget {
  final String title;
  final Alignment alignment;

  const HeaderTile({
    Key key,
    @required this.title,
    this.alignment = Alignment.centerLeft
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 156.0,
      ),
      child: ListTile(
        title: Stack(
          alignment: alignment,
          children: [
            FractionallySizedBox(
              widthFactor: 0.5,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.02),
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
