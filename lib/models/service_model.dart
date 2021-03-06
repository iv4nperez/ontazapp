class Services {

  List<Service> items = <Service>[];
  Services();
  Services.fromJsonList(List<dynamic> jsonList ){

    for(var item in jsonList){
      final service = Service.fromJsonMap(item);
      items.add(service);
    }
  }

}


class Service {

 late int idService;
 late String imageService;
 late String nameService;
 late String descriptionService;
 late int discountService;
 late int raiting;

  Service({
    required this.idService,
    required this.imageService,
    required this.nameService,
    required this.descriptionService,
    required this.discountService,
    required this.raiting
   });

  Service.fromJsonMap(Map<String, dynamic> json){
    idService           = json["idService"];
    imageService        = json["imageService"];
    nameService         = json["nameService"];
    descriptionService  = json["descriptionService"];
    discountService     = json["discountService"];
    raiting             = json["raiting"];
  }

}


