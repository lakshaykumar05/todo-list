import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class Movies extends ChangeNotifier{
  final String name;
  final String url;
  bool isFavorite;

  void changeFavorite(bool val){
    isFavorite=val;
    print(name);
    notifyListeners();
  }

  Movies({this.name,this.url,this.isFavorite});
}