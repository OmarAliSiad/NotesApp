import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  final Color color;
  const CustomNoteItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id); 
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Flutter tips',
                  style: TextStyle(
                      fontSize: 28, color: Colors.black.withOpacity(.9)),
                ),
              ),
              subtitle: Text(
                'Build Your Career with Thrwat Samy',
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(.5)),
              ),
              trailing: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 10, top: 10),
              child: Text(
                'May 21.2022',
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
