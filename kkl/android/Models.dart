class ChatModel{

  String? image;
  String? name;
  String? message;
  String? createdAt;
  // constractor
  
  ChatModel.fromjson(Map json){
    name = json["name"];
    image = json["image"];
    message=json["message"];
    createdAt=json["createdAt"];
  }

}