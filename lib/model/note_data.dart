import 'package:flutter/material.dart';

import 'note.dart';

class NoteData extends ChangeNotifier {
  //overa;; list of 2notes
  List<Note> allNotes = [
    //default first note
    Note(id: 0, text: 'First Note'),
  ];
  
  //get notes
  List<Note>getAllNotes(){
    return allNotes;
  }

  //add a new note
  void addNewNote(Note note) {
    allNotes.add(note);
    notifyListeners();
  }
  //updata note
  void  updateNote(Note note, String text) {
    //go thru list of all notes
    for(int i=0; i< allNotes.length; i++){
      //find the relevant note
      if(allNotes[i].id==note.id){
        //replace test
        allNotes[i].text=text;
      }
   
    }
  }
  //delete note
  void deleteNode(Note note) {
    allNotes.remove(note);
  }

}