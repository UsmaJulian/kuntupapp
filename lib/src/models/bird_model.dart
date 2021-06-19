class Aves {
  List<Ave> items = [];

  Aves();

  Aves.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final ave = new Ave.fromJsonMap(item);
      items.add(ave);
    }
  }
}

class Ave {
  List alas;
  String alimentacion;
  List autorfoto;
  List cabeza;
  int cantidadfotos;
  List cola;
  String comportamiento;
  String distribucion;
  List espalda;
  String especiessimilares;
  String estadodeconservacion;
  String familia;
  String genero;
  String habitat;
  String identificaciondelaespecie;
  String iframe;
  String imagen;
  List imagenes;
  String linkaudio;
  List literaturacitada;
  String mapa;
  String nombrecientifico;
  String nombrecomun;
  String nombreeningles;
  List patas;
  List pecho;
  List pico;
  List regionnatural;
  String reproduccion;
  List vientre;

  Ave({
    this.alas,
    this.alimentacion,
    this.autorfoto,
    this.cabeza,
    this.cantidadfotos,
    this.cola,
    this.comportamiento,
    this.distribucion,
    this.espalda,
    this.especiessimilares,
    this.estadodeconservacion,
    this.familia,
    this.genero,
    this.habitat,
    this.identificaciondelaespecie,
    this.iframe,
    this.imagen,
    this.imagenes,
    this.linkaudio,
    this.literaturacitada,
    this.mapa,
    this.nombrecientifico,
    this.nombrecomun,
    this.nombreeningles,
    this.patas,
    this.pecho,
    this.pico,
    this.regionnatural,
    this.reproduccion,
    this.vientre,
  });
  Ave.fromJsonMap(Map<String, dynamic> json) {
    alas = json['Alas'];
    alimentacion = json['Alimentación'];
    autorfoto = json['Autor foto'];
    cabeza = json['Cabeza'];
    cantidadfotos = json['Cantidad fotos'];
    cola = json['Cola'];
    comportamiento = json['Comportamiento'];
    distribucion = json['Distribución'];
    espalda = json['Espalda'];
    especiessimilares = json['Especies similares'];
    estadodeconservacion = json['Estado de conservación'];
    familia = json['Familia'];
    genero = json['Genero'];
    habitat = json['Hábitat'];
    identificaciondelaespecie = json['Identificación de la especie'];
    iframe = json['Iframe'];
    imagen = json['Imagen'];
    imagenes = json['Imagenes'];
    linkaudio = json['Link audio'];
    literaturacitada = json['Literatura citada'];
    mapa = json['Mapa'];
    nombrecientifico = json['Nombre científico'];
    nombrecomun = json['Nombre común'];
    nombreeningles = json['Nombre en ingles'];
    patas = json['Patas'];
    pecho = json['Pecho'];
    pico = json['Pico'];
    regionnatural = json['Región natural'];
    reproduccion = json['Reproducción'];
    vientre = json['Vientre'];
  }
}
