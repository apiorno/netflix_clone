import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/circular_item.dart';
import 'package:netflix_clone/widgets/img_item.dart';
import 'package:netflix_clone/widgets/top_section.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          TopSection(),
          this._horizontalList('Avances', CircularItem(), 8),
          SizedBox(
            height: 10.0,
          ),
          this._horizontalList('Tendencias', ImageItem(), 8),
          SizedBox(
            height: 10.0,
          ),
          this._horizontalList('Mi lista', ImageItem(), 8),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      bottomNavigationBar: this._bottomNavSection(),
    );
  }

  BottomNavigationBar _bottomNavSection() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      selectedLabelStyle: TextStyle(fontSize: 12.0),
      unselectedLabelStyle: TextStyle(fontSize: 12.0),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: 'proximamente',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Descargas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Mas',
        ),
      ],
    );
  }

  Widget _horizontalList(String title, Widget item, int length) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: length,
            itemBuilder: (context, index) => item,
          ),
        )
      ],
    );
  }
}
