import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/movies.dart';
// import 'package:movies_app/selected_items.dart';
import 'movie_display.dart';
import 'package:provider/provider.dart';
import 'todo_model.dart';
import 'movies.dart';


class MoviesOverviewScreen extends StatelessWidget {
  // const MoviesOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        centerTitle: true,
        backgroundColor: Colors.green,
        // leading: FavoriteButton(valueChanged: (_){
        //   Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedItems()));
        // },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Consumer<TodoModel>(
          builder: (context,todo,child){
            return GridView.builder(
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              itemCount: todo.movies.length,
              itemBuilder: (ctx,i) => ChangeNotifierProvider<Movies>.value(
                value: todo.movies[i],
                child: MovieDisplay(),
            ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,childAspectRatio: 3/2,crossAxisSpacing: 20),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.exposure_plus_1,
              // color: Colo,
            ),
            onPressed: () {
              Provider.of<TodoModel>(context,listen: false).addMovie();
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(
              Icons.exposure_minus_1,
            ),
            onPressed: () {
              Provider.of<TodoModel>(context,listen: false).delMovie();
            },
            heroTag: null,
          ),
        ],
      ),
    );
  }
}
