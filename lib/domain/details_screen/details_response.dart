class DetailResponse {
  bool? success;
  String? message;
  Blog? blog;

  DetailResponse({this.success, this.message, this.blog});

  DetailResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    blog = json['blog'] != null ? new Blog.fromJson(json['blog']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.blog != null) {
      data['blog'] = this.blog!.toJson();
    }
    return data;
  }
}

class Blog {
  int? userId;
  String? title;
  String? contentText;
  String? photoUrl;
  String? createdAt;
  int? id;
  String? description;
  String? contentHtml;
  String? category;
  String? updatedAt;

  Blog(
      {this.userId,
        this.title,
        this.contentText,
        this.photoUrl,
        this.createdAt,
        this.id,
        this.description,
        this.contentHtml,
        this.category,
        this.updatedAt});

  Blog.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    title = json['title'];
    contentText = json['content_text'];
    photoUrl = json['photo_url'];
    createdAt = json['created_at'];
    id = json['id'];
    description = json['description'];
    contentHtml = json['content_html'];
    category = json['category'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['title'] = this.title;
    data['content_text'] = this.contentText;
    data['photo_url'] = this.photoUrl;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['description'] = this.description;
    data['content_html'] = this.contentHtml;
    data['category'] = this.category;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
