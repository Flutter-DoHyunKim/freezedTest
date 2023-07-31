import 'package:drift/drift.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:freezed_testing/data_source/local/database/temp_table.dart';

part 'todos_dao.g.dart';

// the _TodosDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [Todos])
class TodosDao extends DatabaseAccessor<ExampleDatabase> with _$TodosDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  TodosDao(ExampleDatabase db) : super(db);



  Future<int> addTodos(TodosCompanion entry){

    return into(todos).insert(entry);
  }
  Future<List<Todo>> allTodoEntries(){
    return select(todos).get();
  }
  Future delTodo(data){
    return delete(todos).delete(data);
  }
}