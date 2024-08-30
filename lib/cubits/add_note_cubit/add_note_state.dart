part of 'add_note_cubit.dart';


abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaiulre extends AddNoteState {
  final String errorMessage;
  AddNoteFaiulre({required this.errorMessage});
}
