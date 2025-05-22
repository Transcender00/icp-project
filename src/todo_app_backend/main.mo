import Types "./types";
import Array "mo:base/Array";

actor {
  
  // let categories : [Text] = ["Business", "Personal", "Academic", "Family", "Other"];
  stable var todoId = 1;
  stable var todoList : [Types.Todo] = [];


  public func _newTodo(task:Text, category : Types.Category) : async Types.Todo {
    let id = todoId;
    todoId += 1;

    let newTodo : Types.Todo = {
      id = id;
      task = task;
      category = category;
      done = false;
    };

    todoList := Array.append<Types.Todo>(todoList,[newTodo]);
    return newTodo;
  };

  public query func getAllTask() : async [Types.Todo] {
    return todoList;
  };



};
