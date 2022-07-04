import 'package:flutter/cupertino.dart';
import '../models/note.dart';
import 'package:flutter/material.dart';

class NotesOperation with ChangeNotifier {
  // List of note
  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('Triceratops_Max', 'Ga usah kebanyakan drama.');
  }

  void addNewNote(String title, String description) {
    // Note object
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}
