part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

class NoteInitial extends NoteState {}
class NoteSucess extends NoteState{}