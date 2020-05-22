import 'package:flutter_postscris/http_services.dart';
import 'package:flutter_postscris/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PostDetail extends StatelessWidget{
  final Post post;
  //final Post post;
  final HttpsService httpsService=HttpsService();
  PostDetail(
      {
        @required this.post,
      }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages',style: TextStyle(color : Colors.purple),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
            Icons.delete),
        onPressed: () async {
          await httpsService.deletePost(post.id);
          Navigator.of(context).pop();
        },
      ),
      body: Column(
        //mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),

            child: Card(
              child: Text("${post.title}",style: TextStyle(fontSize:18.0),),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child:Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("${post.title}"),
                  ),
                  ListTile(
                    title: Text("ID"),
                    subtitle: Text("${post.id}"),
                  ),
                  ListTile(
                    title: Text("Body"),
                    subtitle: Text("${post.body}"),
                  ),
                  ListTile(
                    title: Text("ID"),
                    subtitle: Text("${post.userId}"),
                  ),
                ],
              ),

            ),
          ),
        ],
      ),


    ) ;
  }
}