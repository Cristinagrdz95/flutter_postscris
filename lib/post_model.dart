import 'package:flutter/foundation.dart';

class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body
  });

  factory Post.fromJson(Map<String, dynamic > json){
    return Post(
        userId:json['userId']as int,
        body:json['body']as String,
        id:json['id']as int,
        title:json['title']as String
    );
  }
}
// class Post2{
//   final int postId;
//   final int id;
//   final String name;
//   final String email;
//    final String body;

//   Post2({
//     @required this.postId,
//     @required this.id,
//     @required this.name,
//     @required this.email,
//     @required this.body
//     });

//     factory Post2.fromJson(Map<String, dynamic > json){
//       return Post2(
//         postId:json['postId']as int,
//         id:json['id']as int,
//         name:json['name']as String,
//         email:json['email']as String,
//         body:json['body']as String
//         );
//     }
// }
