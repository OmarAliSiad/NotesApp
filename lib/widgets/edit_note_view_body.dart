import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/theme/dark_theme.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/list_view_colors%20_item.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
            title: 'Edits Note',
            icon: Icons.check,
            ontap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.description =
                  subtitle ?? widget.noteModel.description;
              widget.noteModel.color =
                  BlocProvider.of<AddNoteCubit>(context).color.value;
              widget.noteModel.save();
              Navigator.of(context).pop();
            }),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hint_color: Colors.grey,
                maxLines: 1,
                hintText: widget.noteModel.title,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                onChanged: (value) {
                  subtitle = value;
                },
                hint_color: Colors.grey,
                maxLines: 5,
                hintText: widget.noteModel.description,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Choose Color',
            style:
                TextStyle(fontSize: darkTheme().textTheme.bodyLarge!.fontSize),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const ColorListView(),
      ],
    );
  }
}
