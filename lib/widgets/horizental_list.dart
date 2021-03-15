import 'package:flutter/material.dart';
import 'package:flutter_movie_app/model/movie.dart';
import 'package:flutter_movie_app/screens/movie_details_screen.dart';

class HorizontalList extends StatelessWidget {
  final int index;

  HorizontalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(MovieDetailsScreen.routeName, arguments: {
            'id': movieList[index].id,
            'title': movieList[index].title,
            'imageUrl': movieList[index].imageUrl,
            'description': movieList[index].description,
            'rating': movieList[index].rating,
            'year': movieList[index].year,
            'duration': movieList[index].duration,
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
                          image: NetworkImage(movieList[index].imageUrl))),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              movieList[index].title,
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
