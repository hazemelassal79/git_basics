import 'package:flutter/material.dart';
void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool status =false;
  bool Status =false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("buttons"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Switch(
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  value: status, onChanged: (val){
                setState(() {
                  status=val;
                });
              }),
              Divider(thickness: 20),
              Container(
                width: 200,
                child: SwitchListTile(
                  title: Text("hazem"),
                    activeColor: Colors.greenAccent,
                    inactiveThumbColor: Colors.black,
                    value: Status, onChanged: (val){
                      setState(() {
                        Status=val;
                      });
                }),
              ),
              TextButton(onPressed: () {}, child: Text(" login")), //login

              MaterialButton(
                  elevation: 60,
                  color: Colors.yellow,
                  onPressed: () {},
                  child: Text("MaterialButton")),

              OutlinedButton(
                  onPressed: () {
                    print("OutlinedButton success");
                  },
                  child: Icon(Icons.add)),

              ElevatedButton(
                  onPressed: () {
                    print("clicked here");
                  },
                  child: Text(
                    "ElevatedButton ev",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,
                    wordSpacing: 10,
                    ),
                  )),

              IconButton(
                  onPressed: () {
                    print("refresh success");
                  },
                  icon: Icon(Icons.refresh))
            ],
          )),
    );
  }
}