import 'package:flutter/material.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Notes',
        icon: Icons.search,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 40),
        child: NotesListView(),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: FloatingActionButton(
          onPressed: () async {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
