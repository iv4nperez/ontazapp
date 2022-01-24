import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class ServiceDetailPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009fe3),
        elevation: 2,
        title: Text('Detail'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10), 
                child:  Hero(
                  tag: "",
                  child: GestureDetector(
                    onTap: (){
                      //agregar ruta para ver imagen si le dan click
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage("https://s01.sgp1.cdn.digitaloceanspaces.com/article/143395-pysnzzzleh-1593090551.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                ),
              ),
              _createContent(context)
            ],
          )
        ],
      ),
    );
  }
}


  Widget _createContent(BuildContext context ) {

  // final comercio = Provider.of<ComercioSeleccionadoProvider>(context);
   final colorX = Color(0xff959494);
    return Container(   
    padding: EdgeInsets.symmetric(horizontal:12.0 ,vertical: 8.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text( name , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      // if(comercio.phoneCall != "") _crearBotonUI(
                      //   Icons.call, 
                      //   Color(0xff072146), 
                      //   Colors.white,
                      //   colorX,
                      //   'Llamar',
                      //   ()=>{ _openCall(comercio.phoneCall)}
                      // ),
                      // if(comercio.applyLocation == true) _crearBotonUI(
                      //   Icons.location_on,
                      //   Colors.red,
                      //   Colors.white,
                      //   colorX,
                      //   'Ubicación',
                      //  ()=>{ _openGoogleMaps( comercio.latitude ,comercio.longitude)  }
                      // ),
                      // if(comercio.numbersServices > 0 || comercio.isEditing) _crearBotonUI(
                      //   FontAwesomeIcons.listUl,
                      //   Color(0xff072146),
                      //   Colors.white,
                      //   colorX,
                      //   'Productos',
                      //   ()=>{
                      //     // _settingModalBottomSheet(context, item.productosApp)
                      //      Navigator.pushNamed(context, 'Products')
                      //   }
                      // ),
                      // if(comercio.phoneWhatsApp != "") _crearBotonUI(
                      //   FontAwesomeIcons.whatsapp,
                      //   Colors.green,
                      //   Colors.white,
                      //   colorX,
                      //   'WhatsApp',
                      //   ()=>{
                      //     whatsAppOpen(comercio.phoneWhatsApp,"Te contacto desde Ontaz carmen App")
                      //   }
                      // )
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(
                    height: 1,
                  ),
                 SizedBox(height: 8),
              // Text( 'Horario laboral: ' , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[700] ),),
              // Container(
              //   width: double.infinity,
              //   height: 80,
              //   child: FutureBuilder(
              //     future: horarios.obtenerListaHorario(comercio.idCommerce),
              //     builder: (BuildContext context, AsyncSnapshot<List<HorarioLaboral>> snapshot) {
              //       if(snapshot.hasData){
              //         return  ListView(
              //             scrollDirection: Axis.horizontal,
              //             children: snapshot.data!.map((e) =>  _crearDiaLaboral(e, context)).toList(),
              //         );
              //       }else{
              //         return Center(
              //           child: SizedBox(
              //             child: CircularProgress(
              //                 showText: false,
              //                 color: Color(0xff392850),
              //                 size: 30,
              //             ),
              //             height: 40,
              //             width: 40,
              //           ),
              //         );
              //       }
              //     },
              //   ), 
              // ),
              Text('Calificación:', 
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[700])),
              SizedBox(
                height: 3,
              ),
              Container(
                child: Row(
                  children: [
                    RatingBarIndicator(
                      rating: 1.2,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 20,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      )
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('(4)',style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text( 'Descripción: '  , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[700])),
              SizedBox(height: 7.0,),
              Text( 
                "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type s",
                textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, fontWeight:  FontWeight.w400, color:  Colors.grey[600])),
              SizedBox(height: 7.0,),
              // Text('Comentarios:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[700])),
              // SizedBox(height: 5.0,),
              // Container(
              //   child: FutureBuilder(
              //     future: commerceProvider.obtenerComentariosComercio(comercio.idCommerce),
              //     builder: (BuildContext context, AsyncSnapshot<List<Comentario>> snapshot) {
                  
              //       if(snapshot.hasData){
              //         if(snapshot.data.length > 0){
              //           return Column(
              //             // children: _crearListComentarios(snapshot.data),
              //           );
              //         }else{
              //           return Center(
              //             child: Text('Aun no hay comentarios',style: TextStyle(  color: Colors.grey[700])),
              //           );
              //         }
              //       }else{

              //         return Center(
              //           child: SizedBox(
              //             child: CircularProgress(
              //               showText: false,
              //                 color: Color(0xff392850),
              //                 size: 30,
              //             ),
              //             height: 40,
              //             width: 40,
              //           ),
              //         );
              //       }
              //     },
              //   ),
              // )
            ],
          ),
        ),
        // Text('Servicio a domicilio:', style: TextStyle(fontSize: 13, fontWeight:  FontWeight.w400)),
        // Icon(Icons.check_box)
      ],
    ),
  );
 }


