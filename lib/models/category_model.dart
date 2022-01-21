
class Categories {

  List<Category>  items = <Category>[];

  Categories();
  Categories.fromJsonList(List<dynamic> jsonList){

    for(var item in jsonList){
      final category =  Category.fromJsonMap(item);
      items.add(category);
    }
  }
}



class Category {
  late int idCategory;
  late String nameCategory;
  late String urlCategory;

  Category({
   required this.idCategory,
   required this.nameCategory,
   required this.urlCategory
  });

  Category.fromJsonMap(Map<String, dynamic> json){
    idCategory    = json["idCategory"];
    nameCategory  = json["nameCartegory"];
    urlCategory   = json["urlCategory"];
  }

}