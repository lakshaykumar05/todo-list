import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'movies.dart';
import 'package:flutter/cupertino.dart';


class TodoModel extends ChangeNotifier{
  List<Movies>movies=[];

  // List<Movies>favMovies=[];

  void addMovie(){
    Movies newMovie=Movies(name: 'Lakshay', url: 'https://userpic.codeforces.org/1289751/title/856ff27d954ce875.jpg', isFavorite: false);
    movies.add(newMovie);
    notifyListeners();
  }

  void delMovie(){
    if(movies.length-1>=0){
      Movies newMovie=movies[movies.length-1];
      movies.remove(newMovie);
      notifyListeners();
    }
  }
}
