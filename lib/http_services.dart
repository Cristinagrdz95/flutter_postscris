import 'dart:convert';
import 'Package:flutter_postscris/post_model.dart';
import 'package:http/http.dart';
class HttpsService{
  final String postsUrl= "https://jsonplaceholder.typicode.com/posts";
  Future<void> deletePost(int id) async{
    Response res = await delete("$postsUrl/$id");

    if(res.statusCode==200){
      print("Eliminado");
    }
  }
  Future<List<Post>> getPosts() async{
    Response res= await get(postsUrl);

    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts=
      body.map((dynamic item )=> Post.fromJson(item)).toList();

      return posts;

    } else{
      throw "No se puede postear";
    }
  }
}