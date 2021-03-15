import 'package:flutter/material.dart';
import 'package:flutter_movie_app/model/movie.dart';
import 'package:flutter_movie_app/widgets/horizental_list.dart';
import 'package:flutter_movie_app/widgets/top_rated_list.dart';
import 'package:flutter_movie_app/widgets/vertical_list.dart';
import 'package:flutter_movie_app/model/movie.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Movies App'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {

              })],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  FlatButton(
                    onPressed: (){},
                    child: Text(
                        'View All'
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => HorizontalList(i),

              ),
            ),

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best of 2021',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    FlatButton(
                      onPressed: (){},
                      child: Text(
                          'View All'
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: movieList.length.bitLength,
                itemBuilder: (ctx, i) => VerticalList(i),

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Rated Movies',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  FlatButton(
                    onPressed: (){},
                    child: Text(
                        'View All'
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topRatedMovieList.length,
                itemBuilder: (ctx, i) => TopRatedList(i),

              ),
            ),

          ],
        ),
      )
    );
  }
}
