import 'package:dabble_studio/blocs/message/message_bloc.dart';
import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/ui/components/sliver_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MessageSent extends StatelessWidget {
  final String email;
  final String name;

  const MessageSent({
    Key key,
    this.email,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(24.0),
          constraints: BoxConstraints(
            maxHeight: 156,
            maxWidth: 156,
          ),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Icon(
                MdiIcons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Thank you $name, your message has been sent!",
            style: kCallToActionButtonTextStyle.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        CallToActionButton(
          "Send another message",
          onPressed: () => context.read<MessageBloc>().sendAnother(email, name),
        )
      ],
    );
  }
}
