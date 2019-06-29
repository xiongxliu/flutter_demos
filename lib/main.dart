import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';

void main() {
  runApp(
   App()
  );
}

// App Widget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
       splashColor: Colors.white70,
     ),
    );
  }
}
// Home Widget
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Flutter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search'),
            )
          ],
          elevation: 30, //阴影
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          )
        ),
         body: TabBarView(
           children: <Widget>[
             ListViewDemo(),
             Icon(Icons.change_history, size: 128, color: Colors.red),
             Icon(Icons.directions_bike, size: 128,color: Colors.blue),
           ],
         ),
         drawer: DrawerDemo(),
         bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
