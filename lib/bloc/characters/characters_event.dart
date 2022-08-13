part of 'characters_bloc.dart';

@immutable
abstract class CharactersEvent {}

class CharactersFilterByNameEvent extends CharactersEvent {
  CharactersFilterByNameEvent({required this.name});
  final String name;
}
