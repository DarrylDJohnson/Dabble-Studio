import 'package:dabble_studio/blocs/message/message_state.dart';
import 'package:dabble_studio/services/message_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'package:dabble_studio/blocs/message/message_state.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

class MessageBloc extends Cubit<MessageState> {
  final MessageService service;

  MessageBloc()
      : this.service = MessageService(),
        super(MessageStateInitial(null, null, null));

  sendMessage(String email, String name, String message) {
    emit(MessageStateLoading());

    service.sendMessage(email, name, message).then(
          (value) => value == null
              ? emit(MessageStateError("Some error", email, name, message))
              : emit(MessageStateSent(email, name)),
        );
  }

  sendAnother(String email, String name){
    emit(MessageStateInitial(email, name, null));
  }

  tryAgain(String email, String name, String message){
    emit(MessageStateInitial(email, name, message));
  }
}
