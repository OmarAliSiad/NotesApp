import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/theme/dark_theme.dart';
import 'package:notesapp/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  final NoteModel note;
  const CustomNoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditNoteView(
                      noteModel: note,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.only(bottom: 0),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  note.title,
                  style: TextStyle(
                      fontSize: darkTheme().textTheme.bodyLarge!.fontSize,
                      color: Colors.black.withOpacity(.9)),
                ),
              ),
              subtitle: Text(
                note.description,
                style: TextStyle(
                    fontSize: darkTheme().textTheme.bodyMedium!.fontSize,
                    color: Colors.grey),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 25,
                ),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 10, top: 10),
              child: Text(
                note.date!,
                style: TextStyle(
                    fontSize: darkTheme().textTheme.bodySmall!.fontSize,
                    color: Colors.black.withOpacity(.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
