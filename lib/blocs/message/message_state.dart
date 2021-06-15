import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class MessageState extends Equatable {
  final List props;

  MessageState([this.props = const []]) : super();
}

class MessageStateInitial extends MessageState {
  final String email;
  final String name;
  final String message;

  MessageStateInitial(this.email, this.name, this.message) : super([email, name, message]);

  @override
  String toString() => 'MessageState: Initial';
}

class MessageStateLoading extends MessageState {
  @override
  String toString() => 'MessageState: Loading';
}

class MessageStateSent extends MessageState {
  final String email;
  final String name;

  MessageStateSent(this.email, this.name) : super([email, name]);

  @override
  String toString() => 'MessageState: Sent';
}

class MessageStateError extends MessageState {
  final error;

  final String email;
  final String name;
  final String message;


  MessageStateError(this.error, this.email, this.name, this.message) : super([error, email, name, message]);

  @override
  String toString() => 'MessageState: Error';
}
