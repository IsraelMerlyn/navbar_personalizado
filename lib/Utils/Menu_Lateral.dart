import 'package:flutter/material.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('assets/images/ic_launcher.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Derechos De Ninos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt),
            title: Text('Derechos De Ninos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuracion'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
