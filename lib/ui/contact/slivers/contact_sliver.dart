import 'package:dabble_studio/blocs/message/message_bloc.dart';
import 'package:dabble_studio/ui/contact/components/message_error.dart';
import 'package:dabble_studio/ui/contact/components/message_form.dart';
import 'package:dabble_studio/ui/contact/components/message_loading.dart';
import 'package:dabble_studio/ui/contact/components/message_sent.dart';
import 'package:flutter/material.dart';

class ContactSliver extends StatefulWidget {
  @override
  _ContactSliverState createState() => _ContactSliverState();
}

class _ContactSliverState extends State<ContactSliver> {
  MessageBloc _bloc;

  @override
  void initState() {
    _bloc = MessageBloc();
    super.initState();
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
              child: BlocProvider<MessageBloc>(
                create: (_) => _bloc,
                child: BlocBuilder(
                  bloc: _bloc,
                  builder: (context, state) {
                    if (state is MessageStateInitial) {
                      return MessageForm(
                        email: state.email,
                        name: state.name,
                        message: state.message,
                      );
                    } else if (state is MessageStateSent) {
                      return MessageSent(email: state.email, name: state.name);
                    } else if (state is MessageStateError) {
                      return MessageError();
                    } else {
                      return MessageLoading();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
