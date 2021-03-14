import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'domain/ChatRoom.dart';

void main() => runApp(MessengerApp());

class MessengerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'RP MESSENGER',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        textTheme: TextTheme(title: TextStyle(color: Colors.black))
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('Role Play chats'),
          leading: Icon(Icons.messenger),
        ),
        body: RoomsList(),
      ),
    );
  }

}

class RoomsList extends StatelessWidget {
  final rooms = <ChatRoom>[
    ChatRoom(title:'chat 1',avatar: Icons.camera ,description:'ыыыааыы'),
    ChatRoom(title:'chat 2',avatar: Icons.accessibility_new_rounded ,description:'ооооееемм')
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child:Container(
        child: GridView.builder(
            itemCount: rooms.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 10.0 / 10.0,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, i) {
              return Card(
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                clipBehavior: Clip.antiAlias,
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('./lib/assets/no-image.png'),
                                  fit: BoxFit.fill),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(rooms[i].title, style: TextStyle(color: Theme.of(context).textTheme.title.color, fontWeight: FontWeight.bold, fontSize: 24.0,)),
       
                      ),
                      ],

                  )
                )
              );
            }
        )
      )
    );
  }
  
}