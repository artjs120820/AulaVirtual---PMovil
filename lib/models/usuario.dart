/*Promp CHATGPT: quieor una clase en dart llamada "usuario" que tegna como atributos un idUsuario, y un correo en string. incluye los metodo tostring, to json, frommap*/
class Usuario {
  // Atributos de la clase
  int idUsuario;
  String correo;

  // Constructor
  Usuario({required this.idUsuario, required this.correo});

  // Método toString
  @override
  String toString() {
    return 'Usuario{idUsuario: $idUsuario, correo: $correo}';
  }

  // Método toJson (convierte el objeto a un mapa JSON)
  Map<String, dynamic> toJson() {
    return {
      'idUsuario': idUsuario,
      'correo': correo,
    };
  }

  // Método fromMap (crea un objeto Usuario a partir de un mapa)
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      idUsuario: map['idUsuario'],
      correo: map['correo'],
    );
  }
}
