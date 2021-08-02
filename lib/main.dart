import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      title: 'New Emulator',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabs"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Spacer(),
          _index == 0
              ? HomePage()
              : (_index == 1
                  ? Setting(context)
                  : _index == 2
                      ? Notification(context)
                      : Search(context)),

          Padding(
            padding: EdgeInsets.only(
                top: 10.0,
                left: 18,
                right: 18,
                bottom: MediaQuery.of(context).padding.bottom),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: Container(
                    // margin: Edge
                    margin: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                        color: _index == 0 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: _index == 0 ? Colors.white : Colors.black,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                _index == 0 ? "Welcome" : "",
                                style: TextStyle(
                                    color: _index == 0
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: Container(
                    // margin: Edge
                    margin: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                        color: _index == 1 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: _index == 1 ? Colors.white : Colors.black,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                _index == 1 ? "My Settings" : "",
                                style: TextStyle(
                                    color: _index == 1
                                        ? Colors.white
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: Container(
                    // margin: Edge
                    margin: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                        color: _index == 2 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: _index == 2 ? Colors.white : Colors.black,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                _index == 2 ? "Notification" : "",
                                style: TextStyle(
                                    color: _index == 2
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 3;
                    });
                  },
                  child: Container(
                    // margin: Edge
                    margin: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                        color: _index == 3 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: _index == 3 ? Colors.white : Colors.black,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                _index == 3 ? "Search" : "",
                                style: TextStyle(
                                    color: _index == 3
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget Home1(BuildContext context) {
    return Expanded(
        child: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    ));
  }

  @override
  Widget Setting(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text("Setting"),
      ),
    );
  }

  @override
  Widget Notification(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text("Notification"),
      ),
    );
  }

  @override
  Widget Search(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text("Search"),
      ),
    );
  }
}

//decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.circular(25.0)),

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Expanded(
        child: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
