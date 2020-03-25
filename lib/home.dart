import 'package:flutter/material.dart';
import 'package:netflixapp/components/drawer_custom.dart';
import 'package:netflixapp/tabs/shows.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index;

  @override
  void initState() {
    this.index = 0;
    super.initState();
  }

  void goToPage(int page) {
    setState(() {
      this.index = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screen = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
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
            physics: NeverScrollableScrollPhysics(),
            children: [
              Shows(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(0.0),
          color: theme.backgroundColor,
          height: 80.0,
          width: screen.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 75.0,
                width: screen.width - 80.0,
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  onTap: this.goToPage,
                  tabs: [
                    Tab(
                      child: Text(
                        "TV Shows",
                        style: TextStyle(
                          fontSize: (this.index == 0) ? 17.0 : 15.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Movies",
                        style: TextStyle(
                          fontSize: (this.index == 1) ? 17.0 : 15.0,
                        ),
                      ),
                    ),
                    Tab(
                      
                      child: Text(
                        "My List",
                        style: TextStyle(
                          fontSize: (this.index == 2) ? 17.0 : 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80.0,
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
