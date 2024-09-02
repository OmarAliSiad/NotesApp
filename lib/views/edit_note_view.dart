import 'package:flutter/material.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  static String id = 'EditNoteView';
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        noteModel: noteModel,
      ),
    );
  }
}
