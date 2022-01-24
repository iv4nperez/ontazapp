import 'package:flutter/material.dart';
import 'package:ontaz/models/category_model.dart';
import 'package:ontaz/providers/category_current.dart';
import 'package:ontaz/services/category_service.dart';
import 'package:provider/provider.dart';
import 'RadarProgress.dart';


class GridCategory extends StatefulWidget {
  @override
  State<GridCategory> createState() => _GridCategoryState();
}

class _GridCategoryState extends State<GridCategory> {
  final categories = CategoryService().getListCategories();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
        future: categories,
        builder:
            (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
          if (snapshot.hasData) {
            List<Category> list = snapshot.data ?? [];

            return RefreshIndicator(
                child: GridView.count(
                  childAspectRatio: 1,
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                    top: 10,
                    bottom: 10,
                  ),
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  children: list
                      .map((element) => (createContainer(context, 1, element)))
                      .toList(),
                ),
                onRefresh: refreshIndicator);
          } else {
            return RadarProgress(
              textLoading: 'Buscando los servicios mas cercanos...',
            );
          }
        });
  }

  Future refreshIndicator() async {
    setState(() {});
  }
}

// Widget createContainer(BuildContext context, int color, Category item) {
//   // final _categoriaProvider = Provider.of<CategoriaProvider>(context);
//   return GestureDetector(
//     onTap: () {
//       // _categoriaProvider.idCategoria = item.idCategory ?? 0;
//       // _categoriaProvider.nombreCategoria = item.title ?? '';

//       // Navigator.pushNamed(context, '/ListDetail');
//     },
//     child: Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(0),
//           border: Border.all(
//             color: Colors.black12,
//             width: 1
//           ),
//           // boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 1)]
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image(
//             width: 42,
//             image: NetworkImage(item.urlCategory),
//           ),
//           SizedBox(height: 14),
//           Text(
//             item.nameCategory,
//             style: TextStyle(color: Color(0xff072146)),
//           ),
//           SizedBox(height: 8),
//         ],
//       ),
//     ),
//   );
// }


Widget createContainer(BuildContext context, int color, Category item) {

  final _categoryProvider = Provider.of<CategoryCurrent>(context);

  return Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
      borderRadius: BorderRadius.circular(35),
    ),
    child: InkWell(
      customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
      ),
      onTap: (){

        _categoryProvider.idCategory    = item.idCategory;
        _categoryProvider.nameCategory  = item.nameCategory;

        Navigator.pushNamed(context, 'category_list');

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 42,
            image: NetworkImage( item.urlCategory )
          ),
          SizedBox(height: 14),
          Text(
              item.nameCategory,
              style: TextStyle(color: Color(0xff333333)),
            ),
            SizedBox(height: 8),
        ],
      ),
    ),
  );
}