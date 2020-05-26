import 'package:flutterappmvc/models/comment_model.dart';
import 'package:flutterappmvc/models/post_model.dart';

abstract class IPostRepository{
  Future<List<Post>> getAllPosts();
  Future<List<Comment>> getCommnets(int idPost);
}