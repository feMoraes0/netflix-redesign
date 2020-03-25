import 'package:flutter/material.dart';
import 'package:netflixapp/components/drawer_custom.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screen = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.search,
                size: 28.0,
              ),
            ),
          ],
        ),
        drawer: DrawerCustom(),
        body: SafeArea(
          child: TabBarView(
            children: [
              Container(
                color: Colors.red,
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(0.0),
          color: theme.backgroundColor,
          height: 75.0,
          width: screen.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 75.0,
                width: screen.width - 70.0,
                child: TabBar(
                  indicatorColor: theme.backgroundColor,
                  tabs: [
                    Tab(
                      child: Text(
                        "TV Shows",
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Movies",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "My List",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
