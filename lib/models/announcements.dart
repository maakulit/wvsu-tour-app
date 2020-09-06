import 'package:equatable/equatable.dart';

class FeaturedImage {
  String caption;
  String url;
  dynamic formats;

  FeaturedImage({this.caption, this.url, this.formats});
}

class CreatedBy {
  String firstname;
  String lastname;
  String username;

  CreatedBy({this.firstname, this.lastname, this.username});
}

class Announcements extends Equatable {
  final String title;
  final String contents;
  final FeaturedImage featuredImage;
  final CreatedBy createdBy;

  Announcements(
      {this.title, this.contents, this.featuredImage, this.createdBy});

  factory Announcements.fromJson(Map<String, dynamic> json) {
    return Announcements(
        contents: json['contents'],
        title: json['title'],
        featuredImage: json['featuredImage'],
        createdBy: json['created_by']);
  }

  @override
  List<Object> get props => [title, contents, featuredImage];
}
