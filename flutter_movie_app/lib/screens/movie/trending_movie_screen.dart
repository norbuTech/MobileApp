import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movie_model.dart';
import 'package:flutter_movie_app/providers/movie_provider.dart';
import 'package:flutter_movie_app/utils/styles/text_styles.dart';
import 'package:flutter_movie_app/widgets/movies/movie_title.dart';
import 'package:provider/provider.dart';

class TrendingMovieScreen extends StatefulWidget {
  @override
  State<TrendingMovieScreen> createState() => _TrendingMovieScreenState();
}

class _TrendingMovieScreenState extends State<TrendingMovieScreen> {

  @override
  void initState(){
    print('prints at first');
    Provider.of<MovieProvider>(context, listen: false).loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;

    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieTile(movie: movieList[index]);
          }),
    );
  }
}
