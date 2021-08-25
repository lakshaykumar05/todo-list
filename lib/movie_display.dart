import 'package:flutter/material.dart';
// import 'package:movies_app/selected_items.dart';
import 'package:movies_app/todo_model.dart';
import 'movies_overview screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'selected_items.dart';
import 'package:provider/provider.dart';
import 'movies.dart';
import 'package:favorite_button/favorite_button.dart';


class MovieDisplay extends StatelessWidget {
  // const MovieDisplay({Key? key}) : super(key: key);

  // final String name,url;
  // bool isFavorite;
  // Movies movie;

  // MovieDisplay(this.name,this.url,this.isFavorite,this.movie);

  @override
  Widget build(BuildContext context) {
    return Consumer<Movies>(
      builder: (context,movie,child){
        return GridTile(
          child: Image.network(movie.url,fit: BoxFit.cover,),
          footer: GridTileBar(
            leading: FavoriteButton(valueChanged: (value){
              // movie.isFavorite=value;
              movie.changeFavorite(value);
              // Provider.of<TodoModel>(context,listen: false).favMovie(movie);
            },),
            backgroundColor: Colors.black54,
            title: Text(movie.name,textAlign: TextAlign.center,),
          ),
        );
      }
    );
  }
}
