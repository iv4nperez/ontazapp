import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Drawer(
        child: SizedBox(
          width: double.infinity * 1,
          child: ListView(
            children: [

              SizedBox(
                height: 104.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff049ee4)
                  ),
                  child: _headerProfile(context),
                ),
              ),
              ListTile(
                title: Text('Inicio',style: TextStyle(color: Color(0xff009ee3)),),
                leading: SvgPicture.asset('assets/home.svg', color: Color(0xff009ee3),),
                onTap: (){
                  Navigator.pushNamed(context, 'home');
                },
              ),
              ListTile(
                title: Text('Notificaciones',style: TextStyle(color: Colors.black),),
                leading: SvgPicture.asset('assets/notification.svg'),
                onTap: (){
                  // Navigator.popAndPushNamed(context, '/MisComercios');
                },
              ),
              ListTile(
                title: Text('Tu Perfil',style: TextStyle(color: Colors.black),),
                leading: SvgPicture.asset('assets/profile_lock.svg'),
                onTap: (){
                  // Navigator.popAndPushNamed(context, routeName)
                },
              ),
              ListTile(
                title: Text('Cerra Sesión',style: TextStyle(color: Colors.black),),
                leading: SvgPicture.asset('assets/exit_app.svg'),
                onTap: (){
                  // Navigator.popAndPushNamed(context, routeName)
                },
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 15,
                padding: EdgeInsets.only(left: 18),
                child: Text('Versión: 1.0.0', style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _headerProfile(BuildContext context){
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          title: Text('Hola Armando', style: TextStyle( color: Colors.white70, fontSize: 13),),
          subtitle: Text('Nivel 1  -  Ontaz puntos', style: TextStyle( color: Colors.white)),
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xff049ee4),
            child: SvgPicture.asset('assets/profile.svg', width: 100, height: 100),
          ),
        )

      ],
    );
  }
}