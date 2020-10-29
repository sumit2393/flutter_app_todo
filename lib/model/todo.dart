class Todo {
  int id;
  String description;
  bool isDone = false;

  //the parameters are optional
  Todo({this.id, this.description, this.isDone = false});

  factory Todo.fromDatabaseJson(Map<String, dynamic> data) => Todo(
    id: data['id'],
    description: data['description'],
    isDone: data['is_done'] == 0 ? false : true,
  );

  Map<String, dynamic> toDatabaseJson() => {
    //A method will be used to convert Todo objects that
    //are to be stored into the datbase in a form of JSON

    "id": this.id,
    "description": this.description,
    "is_done": this.isDone == false ? 0 : 1,
  };
}
