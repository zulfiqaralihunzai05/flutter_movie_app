import 'package:flutter/material.dart';
import 'package:flutter_movie_app/model/movie.dart';
import 'package:flutter_movie_app/screens/movie_details_screen.dart';

class TopRatedList extends StatelessWidget {
  final int index;


  TopRatedList(this.index);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 140,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(MovieDetailsScreen.routeName, arguments: {
            'id': topRatedMovieList[index].id,
            'title': topRatedMovieList[index].title,
            'imageUrl': topRatedMovieList[index].imageUrl,
            'description': topRatedMovieList[index].description,
            'rating': topRatedMovieList[index].rating,
            'year': topRatedMovieList[index].year,
            'duration': topRatedMovieList[index].duration,
          });
        },
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Hero(
                tag: movieList[index].id,
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              topRatedMovieList[index].imageUrl)
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Text(

              topRatedMovieList[index].title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,

            )
          ],
        ),
      ),

    );
  }
}
