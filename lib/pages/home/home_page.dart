import 'package:aula2/models/seccion_docente_cursos.dart';
import 'package:aula2/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/courses_card.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController control = Get.put(HomeController());
  int _selectedIndex = 0;
  late Widget _body;
  Usuario? usuario;

  @override
  void initState() {
    super.initState();
    _body = _getBody(_selectedIndex);
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return _bodyPestana1();
      case 1:
        return Center(child: Text('Página 2'));
      case 2:
        return Center(child: Text('Página 3'));
      default:
        return Center(child: Text('Página 1'));
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _body = _getBody(index);
    });
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _body,
      appBar: AppBar(
        title: Text('Aula Virtual - PM 2024-2'),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert), // Ícono de 3 puntos
            onSelected: (String value) {
              // Maneja la selección del menú
              switch (value) {
                case 'opcion1':
                  print('Opción 1 seleccionada');
                  break;
                case 'opcion2':
                  print('Opción 2 seleccionada');
                  break;
                case 'opcion3':
                  print('Opción 3 seleccionada');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'opcion1',
                  child: Text('Opción 1'),
                ),
                PopupMenuItem<String>(
                  value: 'opcion2',
                  child: Text('Opción 2'),
                ),
                PopupMenuItem<String>(
                  value: 'opcion3',
                  child: Text('Opción 3'),
                ),
              ];
            },
          ),
        ],
      ), //_body(context, usuario),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Mis Cursos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notificaciones'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Calendario')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    ));
  }

  Widget _bodyPestana1() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return control.usuario.value.idUsuario != 0
                  ? Text(
                      'Mis cursos ${control.usuario.value.correo} - ${control.usuario.value.idUsuario}',
                      style: TextStyle(
                        fontSize: 23, // Tamaño de letra
                        fontWeight: FontWeight.w800, // Negrita
                      ),
                    )
                  : Text('data');
            }),
            Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: control.secciones.value.length,
                itemBuilder: (context, index) {
                  SeccionDocenteCursos seccion = control.secciones.value[index];
                  return CoursesCard(
                    cursonombre: seccion.cursoNombre,
                    estadocurso: 'Activo',
                    tagtext: seccion.diploma,
                    codecurso: seccion.seccionCodigo.toString(),
                    docente: seccion.docenteNombre,
                    image: seccion.cursoImagen,
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    this.usuario = Usuario.fromMap(args);
    if (this.usuario != null) {
      control.updateUsuario(this.usuario!);
    }
    control.listarSecciones();
    return _buildBody(context);
  }
}
