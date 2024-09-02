import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount:
              BlocProvider.of<NotesCubit>(context).fetchAllNotes().length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CustomNoteItem(
                  note: BlocProvider.of<NotesCubit>(context)
                      .fetchAllNotes()[index]),
            );
          },
        );
      },
    );
  }
}
