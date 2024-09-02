import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/costants/costants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/theme/dark_theme.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/NoteView.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kbox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit()),
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Roboto',
          ),
          debugShowCheckedModeBanner: false,
          home: const NoteView()),
    );
  }
}
