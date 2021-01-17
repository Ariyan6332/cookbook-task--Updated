import 'package:flutter/material.dart';
import 'package:flutter_meals_demo/login.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // this is the box thing on the top to show things like avatar, log etc
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            // instead of just color you can use box decoration for a more complex
            //  thing.
            child: Text(
              'COOK 🧑‍🍳 BOOK',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).accentColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // pushReplacementNamed clears the whole stack

          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Add Meals', Icons.add, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Search', Icons.search, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
          new ListTile(
            title: Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Signup'),
            trailing: Icon(
              Icons.login,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new LoginPage()));
            },
          )
        ],
      ),
    );
  }
}
