import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/ui/components/contact_text_field.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/extensions.dart';
import 'package:flutter/material.dart';

class ContactSliver extends StatefulWidget {
  @override
  _ContactSliverState createState() => _ContactSliverState();
}

class _ContactSliverState extends State<ContactSliver> {
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _messageController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
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

  _send() async {
    const url = "gttps://flutter.dev";


    //TODO: send message to me via Firebase
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Material(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 720.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
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
                              ),
                            ),
                            Expanded(
                              child: ContactTextField(
                                elevation: 4.0,
                                backgroundColor: Colors.white,
                                label: "Email",
                                controller: _emailController,
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
                            ),
                            ContactTextField(
                              elevation: 4.0,
                              backgroundColor: Colors.white,
                              label: "Email",
                              controller: _emailController,
                            ),
                          ],
                        ),
                  ContactTextField(
                    backgroundColor: Colors.grey.shade200,
                    label: "Message",
                    maxLines: 5,
                    controller: _messageController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CallToActionButton(
                      "Send",
                      onPressed: _send,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
