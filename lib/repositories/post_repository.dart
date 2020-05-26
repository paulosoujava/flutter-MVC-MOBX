import 'dart:convert';

import 'package:flutterappmvc/interfaces/post_repository_interface.dart';
import 'package:flutterappmvc/models/comment_model.dart';
import 'package:flutterappmvc/models/post_model.dart';
import 'package:flutterappmvc/shared/consts_api.dart';
import 'package:http/http.dart' as http;

class PostRepository implements IPostRepository{
  @override
  Future<List<Post>> getAllPosts() async {
    try{
      List<Post> listPost = List();
      final respose = await http.get(ConstsApi.POST_URL);
      if( respose.statusCode == 200 ){
        var decodeJson = jsonDecode(respose.body);
        decodeJson.forEach((item) => listPost.add(Post.fromJson(item)));
        return listPost;
      }
      print("Erro ao carregar lista ${respose.statusCode.toString()}");
    }catch( error, stacktrace){
      print("Erro ao carregar lista ${stacktrace.toString()}");
      return null;
    }

  }

  @override
  Future<List<Comment>> getCommnets(int idPost) async{
    try{
      List<Comment> listComment = List();
      final respose = await http.get(ConstsApi.COMMENT_URL + idPost.toString());
      if( respose.statusCode == 200 ){
        var decodeJson = jsonDecode(respose.body);
        decodeJson.forEach((item) => listComment.add(Comment.fromJson(item)));
        return listComment;
      }
      print("Erro ao carregar lista ${respose.statusCode.toString()}");
    }catch( error, stacktrace){
      print("Erro ao carregar lista ${stacktrace.toString()}");
      return null;
    }
  }
  
}