class HomeResponse {
  bool? success;
  int? totalBlogs;
  String? message;
  int? offset;
  int? limit;
  List<Blogs>? blogs;

  HomeResponse(
      {this.success,
        this.totalBlogs,
        this.message,
        this.offset,
        this.limit,
        this.blogs});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    totalBlogs = json['total_blogs'];
    message = json['message'];
    offset = json['offset'];
    limit = json['limit'];
    if (json['blogs'] != null) {
      blogs = <Blogs>[];
      json['blogs'].forEach((v) {
        blogs!.add(new Blogs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['total_blogs'] = this.totalBlogs;
    data['message'] = this.message;
    data['offset'] = this.offset;
    data['limit'] = this.limit;
    if (this.blogs != null) {
      data['blogs'] = this.blogs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Blogs {
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

  Blogs(
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

  Blogs.fromJson(Map<String, dynamic> json) {
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
