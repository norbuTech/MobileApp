import 'package:flutter/material.dart';
import 'package:flutter_movie_app/utils/styles/text_styles.dart';

class CategoriesMovieScreen extends StatefulWidget {
  const CategoriesMovieScreen({super.key});

  @override
  State<CategoriesMovieScreen> createState() => _CategoriesMovieScreenState();
}

class _CategoriesMovieScreenState extends State<CategoriesMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Categories', style: kScreenTitles),
      ),
    );
  }
}