import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_movie_app/utils/styles/text_styles.dart';
import 'package:flutter_movie_app/widgets/movies/movie_title.dart';
import 'package:provider/provider.dart';

import '../../models/movie_model.dart';
import '../../providers/movie_provider.dart';
import 'package:http/http.dart' as http;

class MoviesByCategoryScreen extends StatefulWidget {
  final String category;
  const MoviesByCategoryScreen({super.key, required this.category});

  @override
  State<MoviesByCategoryScreen> createState() => _MoviesByCategoryScreenState();
}

class _MoviesByCategoryScreenState extends State<MoviesByCategoryScreen> {
  bool loading = true;
  List<MovieModel> movieCategory=[];
  
  @override
  void initState() {
    loadMoviesCategory(widget.category);
  }

  Future<void> loadMoviesCategory(String category) async {
    final res = await http.get(Uri.parse('https://yts.mx/api/v2/list_movies.json?genre=' + widget.category));
    // print(jsonDecode(res.body)['data']['movies']);
    List<MovieModel> categoryMovies = [];

    for(final movieCatgory in jsonDecode(res.body)['data']['movies']){
        categoryMovies.add(MovieModel.fromJson(movieCatgory));
    }

    setState(() {
      movieCategory = categoryMovies;
      loading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    // List<MovieModel> movieList = Provider.of<MovieProvider>(context,listen:false).getMoviesByCategory(widget.category);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Container(
        child: movieCategory.length == 0 ? const Center(
          child: Text('No movies available for this category'),
        ):ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: movieCategory.length,
            itemBuilder: (BuildContext context, int index) {
              return MovieTile(movie: movieCategory[index]);
            }),
      ),
  
    );
  }
}
