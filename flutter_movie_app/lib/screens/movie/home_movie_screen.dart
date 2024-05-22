import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movie_model.dart';
import 'package:flutter_movie_app/providers/movie_provider.dart';
import 'package:flutter_movie_app/widgets/movies/categories_list.dart';
import 'package:flutter_movie_app/widgets/movies/latest_movies.dart';
import 'package:flutter_movie_app/widgets/movies/trending_movies.dart';
import 'package:provider/provider.dart';


class HomeMovieScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;
//     // List<int> movieList = [1,2,3,4,5,6];
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: movieList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(movieList[index].title),
//               // subtitle: Text(movieList[index].year.toString(), style: TextStyle(
//               subtitle: Text(
//                 movieList[index].img.toString(),
//                 style: const TextStyle(),
//               ),
//               leading: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(
//                   movieList[index].img,
//                   height: 80,
//                   width: 80,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               trailing: Text(
//                 movieList[index].rating.toString(),
//                 style: const TextStyle(fontSize: 24),
//               ),
//             );
//           }),
//     );
//   }
// }
 @override
  Widget build(BuildContext context) {

    // List<int> movieList = [1,2,3,4,5,6];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrendingMovies(),
              CategoriesList(),
              LatestMovies()
            ],
          ),
        ),
      ),
    );
  }
}

