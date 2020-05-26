import 'dart:html';

import 'package:flutterappmvc/models/comment_model.dart';
import 'package:flutterappmvc/models/post_model.dart';
import 'package:flutterappmvc/repositories/post_repository.dart';
import 'package:mobx/mobx.dart';

part 'post_controller.g.dart';

class PostController = _PostControllerBase with _$PostController;

abstract class _PostControllerBase with Store {
  PostRepository _postRepository;

  _PostControllerBase() {
    _postRepository = PostRepository();
  }

  @observable
  ObservableList<Post> listPost;

  @observable
  ObservableList<Comment> listComment;

  @action
  loadPosts() async {
    listPost = ObservableList<Post>.of(await _postRepository.getAllPosts());
  }

  @action
  loadComments({int idPost}) async {
    listComment = ObservableList<Comment>.of(await _postRepository.getCommnets(idPost));
  }

}