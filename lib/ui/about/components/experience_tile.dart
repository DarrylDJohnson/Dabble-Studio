import 'package:dabble_studio/ui/components/action_button.dart';
import 'package:flutter/material.dart';

class ExperienceTile extends StatefulWidget {
  final String assetName;
  final String title;
  final String description;
  final List<Widget> children;

  const ExperienceTile({
    Key key,
    this.assetName,
    this.title,
    this.description,
    this.children,
  }) : super(key: key);

  @override
  _ExperienceTileState createState() => _ExperienceTileState();
}

class _ExperienceTileState extends State<ExperienceTile> {
  bool _isOpen;

  @override
  void initState() {
    _isOpen = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.assetName,
            height: 48.0,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(widget.description),
                ),
                Visibility(
                  visible: _isOpen,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: widget.children,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ActionButton(
                    _isOpen ? "See less" : "Learn more",
                    onPressed: () => setState(() => _isOpen = !_isOpen),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
