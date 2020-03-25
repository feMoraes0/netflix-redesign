import 'package:flutter/material.dart';

class Shows extends StatelessWidget {
  final List<Map> trailers = [
    {'name': 'Game Over, Man!', 'cover': 'images/trailer/trailer-001.jpeg'},
    {
      'name': 'Living with Yourself',
      'cover': 'images/trailer/trailer-002.jpeg'
    },
    {'name': 'The Crown', 'cover': 'images/trailer/trailer-003.jpeg'},
    {'name': 'Luke Cage', 'cover': 'images/trailer/trailer-004.jpeg'},
    {'name': 'The Last Summer', 'cover': 'images/trailer/trailer-005.jpeg'},
  ];

  final List<Map> watching = [
    {
      'name': 'Outlaw King',
      'subtitle': '60m of 137m',
      'cover': 'images/netflix-cover/netflix-cover-004.jpg'
    },
    {
      'name': 'Mowgli: Legend of the Jungle',
      'subtitle': '11m of 104m',
      'cover': 'images/netflix-cover/netflix-cover-001.jpg'
    },
    {
      'name': 'Rim of the World',
      'subtitle': '25m of 99m',
      'cover': 'images/netflix-cover/netflix-cover-002.jpg'
    },
    {
      'name': 'Revenger',
      'subtitle': '130m of 142m',
      'cover': 'images/netflix-cover/netflix-cover-003.jpg'
    },
    {
      'name': 'The Night Comes for Us',
      'subtitle': '10m of 121m',
      'cover': 'images/netflix-cover/netflix-cover-005.jpg'
    },
  ];

  Widget titleSection(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Container(
        height: screen.height,
        color: theme.backgroundColor,
        child: ListView(
          children: <Widget>[
            Text('Hello'),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                bottom: 10.0,
              ),
              child: this.titleSection('Continue Watching'),
            ),
            Container(
              height: 210.0,
              margin: const EdgeInsets.only(bottom: 40.0),
              padding: const EdgeInsets.only(left: 20.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: this.watching.length,
                itemBuilder: (context, index) {
                  Map element = this.watching[index];
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 160.0,
                          width: screen.width * 0.60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(element['cover']),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Text(
                          element['name'],
                          style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          element['subtitle'],
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                bottom: 10.0,
              ),
              child: this.titleSection('Netflix Originals'),
            ),
            Container(
              height: 200.0,
              margin: const EdgeInsets.only(bottom: 35.0),
              padding: const EdgeInsets.only(left: 20.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: this.trailers.length,
                itemBuilder: (context, index) {
                  Map element = this.trailers[index];
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 170.0,
                          width: screen.width * 0.60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(element['cover']),
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                        Container(
                          child: Text(
                            element['name'],
                            style: TextStyle(
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
