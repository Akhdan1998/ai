class Ai {
  int? id;
  String? user_id;
  String? random_id;
  int? index;
  String? roel;
  String? content;
  dynamic created_at;
  dynamic updated_at;
  dynamic deleted_at;

  Ai({
    this.id,
    this.user_id,
    this.random_id,
    this.index,
    this.roel,
    this.content,
    this.created_at,
    this.updated_at,
    this.deleted_at,
  });

  Ai.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user_id = json['id'];
    random_id = json['id'];
    index = json['id'];
    roel = json['id'];
    content = json['id'];
    created_at = json['id'];
    updated_at = json['id'];
    deleted_at = json['id'];
  }
}
