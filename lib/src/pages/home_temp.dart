import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eigth',
    'Nine',
    'Ten'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    //Iterate the options list
    for (int i = 0; i < options.length; i++) {
      //Create a new widget ListTile
      final tempWidget = ListTile(
        title: Text(options[i]),
      );

      //Add new widget to the list
      list..add(tempWidget)..add(Divider());
    }
    // Return the list
    return list;
  }

  List<Widget> _createItemsShort() {
    return options.map((option) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$option!'),
            subtitle: Text('$option things...'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
        ],
      );
    }).toList();
  }
}
