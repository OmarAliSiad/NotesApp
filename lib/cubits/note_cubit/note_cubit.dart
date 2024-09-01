import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/costants/costants.dart';
import 'package:notesapp/model/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;
  fetchData() {
    Box<NoteModel> values = Hive.box<NoteModel>(kbox);
    notes = values.values.toList();
  }
}
