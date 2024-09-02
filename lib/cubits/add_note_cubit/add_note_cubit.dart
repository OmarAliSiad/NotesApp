import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/costants/costants.dart';
import 'package:notesapp/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      Box<NoteModel> notesBox = Hive.box<NoteModel>(kbox);
      await notesBox.add(note);
      print(
          'notes Box : ${notesBox.values.first}\n notesBox : ${notesBox.isEmpty} ');
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaiulre(errorMessage: e.toString()));
    }
  }
}
