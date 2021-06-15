import 'package:dabble_studio/blocs/message/message_bloc.dart';
import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MessageError extends StatelessWidget {
  final String name;
  final String email;
  final String message;

  const MessageError({
    Key key,
    this.name,
    this.email,
    this.message,
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
                MdiIcons.close,
                color: Colors.white,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "$name! There was an error!",
            style: kCallToActionButtonTextStyle.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        CallToActionButton(
          "Try again",
          onPressed: () =>
              context.read<MessageBloc>().sendMessage(email, name, message),
        )
      ],
    );
  }
}
