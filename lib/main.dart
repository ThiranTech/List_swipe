import 'package:flutter/material.dart';

import 'swipe_widget.dart';




void main() => runApp(new MyApp(),  );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  


  @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(

        title: new Text(widget.title),
      ),
      body: new Center(
        child: new ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return new OnSlide(
              items: <ActionItems>[
                new ActionItems(icon: new IconButton(icon: new Icon(Icons.archive), onPressed: () {},color: Colors.green,
                ), onPress: (){}, backgroudColor: Colors.white),
                new ActionItems(icon: new IconButton(icon: new Icon(Icons.delete), onPressed: () {}, color: Colors.red,
                ), onPress: (){},  backgroudColor: Colors.white),
                  new ActionItems(icon: new IconButton( icon: new Icon(Icons.save),  onPressed: () {},color: Colors.blue,
                ), onPress: (){},  backgroudColor: Colors.white),
                  new ActionItems(icon: new IconButton(  icon: new Icon(Icons.bookmark),
                  onPressed: () {},color: Colors.orange,
                ), onPress: (){},  backgroudColor: Colors.white),
              ],
              child: new Container(
                padding: const EdgeInsets.only(top:10.0),
                width: 200.0,
                height: 150.0,                
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      new Text("This is a demo card")
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
 
    );
  }
}
