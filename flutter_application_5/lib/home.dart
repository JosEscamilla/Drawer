import 'package:flutter/material.dart';
import 'package:flutter_application_5/google_drive.dart';
import 'gallery.dart';
import 'import.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Import();
      case 1:
        return Gallery();
      case 2:
        return Drive();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACCESOS RAPIDOS'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('JOSE'),
              accountEmail: Text('@EQUIPO DE PROGRAMACION'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  'J',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('AMAZON'),
              leading: Icon(Icons.car_rental),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('STEREN'),
              leading: Icon(Icons.phone_android),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('GOGLE DRIVE'),
              leading: Icon(Icons.book_online),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            Divider(),
            ListTile(
              title: Text('GOGLE MAPS'),
              leading: Icon(Icons.book_online),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                //   _onSelectItem(1);
              },
            ),
            Divider(),
            ListTile(
              title: Text('INGRESAR'),
              leading: Icon(Icons.one_k_plus),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                //   _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('SALIR'),
              leading: Icon(Icons.book_online),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                //   _onSelectItem(1);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
