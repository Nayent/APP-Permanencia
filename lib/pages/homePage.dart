import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: Center(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.supervised_user_circle,
                  size: 72,
                ),
                Text(
                  "Pedro Tashima",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Gerente de projetos",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
          ),
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Icon(Icons.exit_to_app),
              ),
              Text("Desconectar")
            ],
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Icon(Icons.settings),
              ),
              Text("Configurações")
            ],
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ])),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Permanencias"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
            child: Dismissible(
              key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
              background: Container(
                color: Colors.greenAccent,
                child: Align(
                  alignment: Alignment(-0.9, 0.0),
                  child: Icon(
                    Icons.check,
                    color: Colors.black,
                  ),
                ),
              ),
              direction: DismissDirection.startToEnd,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 4.0),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.black,
                            ),
                          ),
                          Text("Sala da empresa")
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 4.0),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.black,
                              ),
                            ),
                            Text("13:00")
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Icon(
                                  Icons.calendar_today,
                                  color: Colors.black,
                                ),
                              ),
                              Text("12/05/20")
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
