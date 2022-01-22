import 'package:flutter/material.dart';
import 'package:ontaz/models/service_model.dart';
import 'package:ontaz/services/service_service.dart';
import 'package:ontaz/widgets/CircularProgress.dart';

class CategoryListPage extends StatelessWidget {

  final services = ServiceService().getListServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009fe3),
        elevation: 2,
        title: Text('Category'),
      ),
      body: Center(
        child: FutureBuilder(
          future: services,
          builder: (BuildContext context, AsyncSnapshot<List<Service>> snapshot){

            if( snapshot.hasData ) {

              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: ( context, index ){
                  Service comercio = snapshot.data![index];
                  return CreateService(
                    item: comercio,
                  );
                }
              );


            }else {
              return CircularProgress(
                size: 50,
              );
            }

          }
        ),
      ),
    );
  }
}





class CreateService extends StatelessWidget {
    final Service item;
    const CreateService({
      required this.item
    });

    @override
    Widget build(BuildContext context) {
      var colorCard = Colors.white;
      return Container(
        color: colorCard,
        child: Column(
        children: [
          InkWell(
            onTap: (){

            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10),
              width: double.infinity,
              height: 115,

              child: Row(
                children: [
                  Hero(
                    tag: item.idService,
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: FadeInImage(
                          placeholder: AssetImage('assets/loading.gif'),
                          image:  NetworkImage(
                                item.imageService),
                                fit: BoxFit.cover,
                        ),
                      ),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.symmetric( vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 3),
                          child: Text( item.nameService.length > 25 ? item.nameService.substring(0,25) + '...' : item.nameService,
                          maxLines: 20,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            color:  Colors.grey[600],
                            fontWeight: FontWeight.w700,
                          )),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 45,
                          width: double.infinity,
                          padding: EdgeInsets.only( right: 3),
                          child: Text(
                            item.descriptionService.length > 50 ? item.descriptionService.substring(0,50) + '...' : item.descriptionService,
                          maxLines: 20,
                          // textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color:  Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          )),
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   child: ((item.applyMonthPromotion!) && (item.discount! >= 0 ))?  Text(
                        //     '${item.discount.toString()}% de descuento',
                        //     textAlign: TextAlign.start, 
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //     color: item.discount! <= 30  ? Colors.yellow[800] : Colors.red[400]   
                        //     )

                        //   ) : Container(
                        //     child: Row(
                        //       children: [
                        //        RatingBarIndicator(
                        //           rating: item.starts!,
                        //           direction: Axis.horizontal,
                        //           itemCount: 5,
                        //           itemSize: 20,
                        //           itemBuilder: (context, _) => Icon(
                        //             Icons.star,
                        //             color: Colors.amber,
                        //           )
                        //         ),
                        //         SizedBox(
                        //           width: 8,
                        //         ),
                        //         Text('(${item.starts})',style: TextStyle(color: Colors.grey))
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color:  Colors.grey[400],
            height: 3,
          )
        ],
    ),
      );
    }
  }