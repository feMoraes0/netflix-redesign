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

  Widget modalElement(String label, {bool active = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      margin: const EdgeInsets.only(
        right: 12.0,
        bottom: 15.0,
      ),
      decoration: BoxDecoration(
        color: (active) ? Colors.red : Colors.white12,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(20.0),
            color: Color.fromRGBO(34, 34, 34, 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      margin: const EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white60,
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.filter_list,
                            size: 34.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Filter',
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        this.modalElement(
                          'Action',
                          active: true,
                        ),
                        this.modalElement('Anime'),
                        this.modalElement('Asian'),
                        this.modalElement('British'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        this.modalElement(
                          'Comedies',
                          active: true,
                        ),
                        this.modalElement('Crime'),
                        this.modalElement('Docuseries'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        this.modalElement('Dramas'),
                        this.modalElement('European'),
                        this.modalElement(
                          'Horror',
                          active: true,
                        ),
                        this.modalElement('Kids'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        this.modalElement('Reality & Talk Shows'),
                        this.modalElement('Romance'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        this.modalElement('Sci-Fi & Fantasy'),
                        this.modalElement('Teen'),
                        this.modalElement('Thriller'),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: FlatButton(
                    color: Colors.white60,
                    onPressed: () {},
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          );
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
                  onPressed: () {
                    this.showModal();
                  },
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
