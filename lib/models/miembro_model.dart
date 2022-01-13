import 'dart:convert';

Miembro miembroFromJson(String str) => Miembro.fromJson(json.decode(str));

String miembroToJson(Miembro data) => json.encode(data.toJson());

class Miembro {
    Miembro({
        this.nombre,
        this.descripcion,
        this.fechaNacimiento,
        this.uuid,
        this.nid,
        this.cuenta,
        this.documento,
        this.alturaNacimiento,
        this.pesoNacimiento,
    });

    String nombre;
    String descripcion;
    DateTime fechaNacimiento;
    String uuid;
    String nid;
    String cuenta;
    String documento;
    String alturaNacimiento;
    String pesoNacimiento;

    factory Miembro.fromJson(Map<String, dynamic> json) => Miembro(
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        fechaNacimiento: DateTime.parse(json["fecha_nacimiento"]),
        uuid: json["uuid"],
        nid: json["nid"],
        cuenta: json["cuenta"],
        documento: json["documento"],
        alturaNacimiento: json["altura_nacimiento"],
        pesoNacimiento: json["peso_nacimiento"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "descripcion": descripcion,
        "fecha_nacimiento": fechaNacimiento.toIso8601String(),
        "uuid": uuid,
        "nid": nid,
        "cuenta": cuenta,
        "documento": documento,
        "altura_nacimiento": alturaNacimiento,
        "peso_nacimiento": pesoNacimiento,
    };
}
