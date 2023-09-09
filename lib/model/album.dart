class Album {
  int userId;
  int id;
  String title;

  Album({
    required this.userId,
    required this.id,
    required this.title});


  factory Album.fromJson (Map<String, dynamic> json){
    return Album(
        userId: json['userId'],
        id: json['id'],
        title: json['title']);
  }


}

/*
{
"userId": 1,
"id": 1,
"title": "quidem molestiae enim"
}*/
