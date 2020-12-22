import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'text to display'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var age;
  String x;
  DateTime dt = new DateTime.now();
   int calculateAge(){
    
      age = dt.year-2001;
        return age;
    
  }
   int calculateAge1(){
    
      age = dt.month-12;
        return age;
    
  }
   int calculateAge2(){
    
      age = dt.day-22;
        return age;
    
  }

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'B5SqsKOrak', // id youtube video just after the /
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'text to display inside the body' ,
             ),
             Text('YOU ARE'),
             Text(calculateAge().toString()+'years '+calculateAge1().toString()+' month '+calculateAge2().toString()+' days'),
             Text('old')  ,      
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
