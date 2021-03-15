import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const routeName = '/movie-details';

  @override
  Widget build(BuildContext context) {
    final routeArgs =ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];

    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        backgroundColor: Color(0xfff4f4f4),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Card(
                elevation: 5,
                child: Hero(
                  tag: id,
                  child: Container(
                    height: 290,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              routeArgs['imageUrl'],
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              routeArgs['title'],
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,

                letterSpacing: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          routeArgs['duration'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          routeArgs['year'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          routeArgs['rating'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              routeArgs['description'],
              style: TextStyle(fontSize: 14, height: 1.5),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
              padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.play_circle_outline),
                    Text(
                      'Watch Trailer',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                onPressed: () {}),
          ),
          Expanded(
            child: RaisedButton(

                color: Colors.yellowAccent,
                textColor: Colors.black,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(height:  5, width: 5,),
                    Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
