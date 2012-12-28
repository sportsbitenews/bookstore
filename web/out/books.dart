// Auto-generated from books.html.
// DO NOT EDIT.

library books_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'dart:html';

import 'package:books/models.dart';


// Original code
List<Book> books = [];

// binding created auto-magically!
void createNewBook() {
  var input = query("#new-book");
  books = [(new Book(input.value))]..addAll(books);
  input.value = "";
}
  
main() {
  ["War and Peace", "The Idiot", "Crime and Punishment"].forEach((title) {
    books.add(new Book(title));
  });
} 

// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.InputElement __newBook;
  
  autogenerated_html.ButtonElement __e0;
  
  autogenerated_html.EventListener __listener__e0_click_1;
  
  autogenerated_html.UnknownElement __e3;
  
  List<autogenerated.WatcherDisposer> __stoppers2;
  
  List<Function> _removeChild__e3 = [];
  
  autogenerated_html.Node _endPosition__e3;
  


  // Initialize fields.
  __newBook = _root.query('#new-book');
  __e0 = _root.query('#__e-0');
  __e3 = _root.query('#__e-3');
  __stoppers2 = [];
  

  // Attach model to views.
  __listener__e0_click_1 = ($event) {
    createNewBook();
    autogenerated.dispatch();
  };
  __e0.on.click.add(__listener__e0_click_1);
  
  _endPosition__e3 = __e3;
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => books, (_) {
    for (var remover in _removeChild__e3) remover();
    _removeChild__e3.clear();
    
    _endPosition__e3 = autogenerated.removeNodes(__e3, _endPosition__e3);
    
    var __insert___e3 = __e3.nextNode;
    
    for (var book in books) {
      
      autogenerated_html.LIElement __e2;
      var __binding1;
      List<autogenerated.WatcherDisposer> __stoppers3_1;
      
      __e2 = new autogenerated_html.LIElement();
      __binding1 = new autogenerated_html.Text('');
      __stoppers3_1 = [];
      __e2.nodes.add(__binding1);
      
      autogenerated.insertAllBefore(__e3.parentNode, __insert___e3,
      
      [new autogenerated_html.Text('\n        '), __e2, _endPosition__e3 = new autogenerated_html.Text('\n      ')]);
      
      __stoppers3_1.add(autogenerated.watchAndInvoke(() => '${ book.title }', (__e) {
        __binding1 = autogenerated.updateBinding( book.title , __binding1, __e.newValue);
      }));
      
      _removeChild__e3.add(() {
        
        __e2 = null;
        (__stoppers3_1..forEach((s) => s())).clear();
        __binding1 = null;
        
      });
    }
  }));
  

}
