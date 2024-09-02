import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/costants/costants.dart';
import 'package:notesapp/model/note_model.dart';

part 'note_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitial());
  late List<NoteModel> notes;
  List<NoteModel> fetchAllNotes() {
    Box<NoteModel> notesBox = Hive.box<NoteModel>(kbox);
    notes = notesBox.values.toList();
    emit(NoteSucess());
    return notes;
  }
}
