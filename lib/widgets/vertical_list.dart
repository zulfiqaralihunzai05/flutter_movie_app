import 'package:flutter/material.dart';
import 'package:flutter_movie_app/model/movie.dart';
import 'package:flutter_movie_app/screens/movie_details_screen.dart';

class VerticalList extends StatelessWidget {
  final int index;


  VerticalList(this.index);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MovieDetailsScreen.routeName, arguments: {
          'id': bestMovieList[index].id,
          'title': bestMovieList[index].title,
          'imageUrl': bestMovieList[index].imageUrl,
          'description': bestMovieList[index].description,
          'rating': bestMovieList[index].rating,
          'year': bestMovieList[index].year,
          'duration': bestMovieList[index].duration,
        });
      },
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: Row(
              children: [
                Hero(
                  tag: movieList[index].id,
                  child: Container(
                    height: 150,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5)
                        ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                bestMovieList[index].imageUrl),
                            )
                        )
                    ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bestMovieList[index].title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 5,),
                      Container(
                          width: 230,
                          child: Text(
                            bestMovieList[index].description,
                          ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
