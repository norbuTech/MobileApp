import 'package:flutter/material.dart';
import 'package:flutter_movie_app/providers/movie_provider.dart';
import 'package:flutter_movie_app/utils/styles/text_styles.dart';
import 'package:flutter_movie_app/widgets/movies/movie_title.dart';
import 'package:provider/provider.dart';

import '../../models/movie_model.dart';

class LatestMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).latestMovies;

    return Container(
      margin: EdgeInsets.only(top:16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Latest Movies', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: movieList.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieTile(movie: movieList[index]);
              }),
        ],
      ),
    );
  }
}
