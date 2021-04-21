import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/top_nav_bar.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[this._header(), this._info(), this._bottonsBar()],
    );
  }

  Widget _header() {
    return Stack(
      children: <Widget>[
        Image.network(
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbuhomag.elmundo.es%2Fentretenimiento%2Fseries%2Frazones-para-ver-elite-serie-netflix%2F&psig=AOvVaw2sfPVCzbz1Z7HxfuPyw9Ap&ust=1618579047366000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJCa-P6qgPACFQAAAAAdAAAAABAJ',
            height: 350.0,
            fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(child: TopNavBar()),
      ],
    );
  }

  Widget _info() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelezco',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Suspenso inssotenible',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ],
    );
  }

  Widget _bottonsBar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(children: <Widget>[
            Icon(
              Icons.check,
              color: Colors.white,
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Mi lista',
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          ]),
          TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: Text(
                'Reproducir',
                style: TextStyle(color: Colors.black),
              )),
          Column(children: <Widget>[
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Info',
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          ]),
        ],
      ),
    );
  }
}
