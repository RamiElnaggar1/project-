import 'package:path/path.dart';
import 'package:project/cart/cart_model.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
static final DbHelper _instanse=DbHelper.internal();
factory DbHelper(){
  return _instanse;
}
DbHelper.internal();

  Database _database;


Future<Database>createDB()async{

  if(_database!=null){

    return _database;

  }

  String path=join(await getDatabasesPath(),"project.db");
_database=await openDatabase(path
,version:1,
  onCreate: (database,version){
  database.execute("create table project(number integer primary key autoincrement,name varchar )");
  }
);
return _database;
}
Future<int> insertCart(ModelCart cart)async{
  Database database=await createDB();
  return database.insert("project", cart.toJson());
}
Future<List<ModelCart>> selectAllprject()async{
  Database database=await createDB();
  List<ModelCart>projects=[];
  for(var item in await database.query("project")){
    projects.add(ModelCart.fromJson(item));
  }
  print('projects:: $projects');
return   projects;
}
}
