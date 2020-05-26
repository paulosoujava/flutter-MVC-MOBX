// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostController on _PostControllerBase, Store {
  final _$listPostAtom = Atom(name: '_PostControllerBase.listPost');

  @override
  ObservableList<Post> get listPost {
    _$listPostAtom.reportRead();
    return super.listPost;
  }

  @override
  set listPost(ObservableList<Post> value) {
    _$listPostAtom.reportWrite(value, super.listPost, () {
      super.listPost = value;
    });
  }

  final _$listCommentAtom = Atom(name: '_PostControllerBase.listComment');

  @override
  ObservableList<Comment> get listComment {
    _$listCommentAtom.reportRead();
    return super.listComment;
  }

  @override
  set listComment(ObservableList<Comment> value) {
    _$listCommentAtom.reportWrite(value, super.listComment, () {
      super.listComment = value;
    });
  }

  final _$loadPostsAsyncAction = AsyncAction('_PostControllerBase.loadPosts');

  @override
  Future loadPosts() {
    return _$loadPostsAsyncAction.run(() => super.loadPosts());
  }

  final _$loadCommentsAsyncAction =
      AsyncAction('_PostControllerBase.loadComments');

  @override
  Future loadComments({int idPost}) {
    return _$loadCommentsAsyncAction
        .run(() => super.loadComments(idPost: idPost));
  }

  @override
  String toString() {
    return '''
listPost: ${listPost},
listComment: ${listComment}
    ''';
  }
}
