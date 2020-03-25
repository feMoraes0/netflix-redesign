import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget _getDrawer(ThemeData theme) {
    return Drawer(
      child: Container(
        color: theme.backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180.0),
                      image: DecorationImage(
                        image: AssetImage('images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Rocket Raccoon',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'View profile',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'History',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'My List',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'App Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Downloads',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Purchase',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'FAQ & Help',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0.0),
                title: Row(
                  children: <Widget>[
                    Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

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
        drawer: this._getDrawer(theme),
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
