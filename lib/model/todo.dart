class ToDo{
  String? id;
  String? todoText;
  bool isDone;

ToDo({
  required this.id,
  required this.todoText,
  this.isDone = false,
});

static List<ToDo> todoList(){
  return[
    ToDo(id: '01', todoText: 'Post LSPPDay5 tweet', isDone: true),
    ToDo(id: '02', todoText: 'Read few pages of The Outsider', isDone: true),
    ToDo(id: '03', todoText: 'Project Proposal'),
    ToDo(id: '04', todoText: 'Write something'),
    ToDo(id: '05', todoText: 'Dinner'),
  ];
}
}