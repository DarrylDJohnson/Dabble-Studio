import 'package:dabble_studio/blocs/message/message_bloc.dart';
import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/ui/components/contact_text_field.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/extensions.dart';
import 'package:flutter/material.dart';

class MessageForm extends StatefulWidget {

  final String email;
  final String name;
  final String message;

  const MessageForm({Key key, this.email, this.name, this.message}) : super(key: key);

  @override
  State<MessageForm> createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _messageController;

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.name);
    _emailController = TextEditingController(text: widget.email);
    _messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            "Get in touch",
            style: kLightHeaderTextStyle,
          ),
        ),
        SizedBox(height: 24.0),
        MediaQuery.of(context).widerThan(720)
            ? Row(
                children: [
                  Expanded(
                    child: ContactTextField(
                      elevation: 4.0,
                      backgroundColor: Colors.white,
                      label: "Your Name",
                      controller: _nameController,
                      validate: (text) => text.isEmpty,
                      errorText: "Enter a valid name",
                    ),
                  ),
                  Expanded(
                    child: ContactTextField(
                      elevation: 4.0,
                      backgroundColor: Colors.white,
                      label: "Email",
                      controller: _emailController,
                      textInputType: TextInputType.emailAddress,
                      validate: (text) => !text.isValidEmail,
                      errorText: "Enter a valid email",
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  ContactTextField(
                    elevation: 4.0,
                    backgroundColor: Colors.white,
                    label: "Your Name",
                    controller: _nameController,
                    validate: (text) => !text.isValidName,
                    errorText: "Enter a valid name",
                  ),
                  ContactTextField(
                    elevation: 4.0,
                    backgroundColor: Colors.white,
                    label: "Email",
                    controller: _emailController,
                    textInputType: TextInputType.emailAddress,
                    validate: (text) => !text.isValidEmail,
                    errorText: "Enter a valid email",
                  ),
                ],
              ),
        ContactTextField(
          backgroundColor: Colors.grey.shade200,
          label: "Message",
          maxLines: 5,
          controller: _messageController,
          validate: (text) => text.isEmpty,
          errorText: "Message cannot be empty",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CallToActionButton(
            "Send",
            onPressed: () => context.read<MessageBloc>().sendMessage(
                  _emailController.text,
                  _nameController.text,
                  _messageController.text,
                ),
          ),
        ),
      ],
    );
  }
}
