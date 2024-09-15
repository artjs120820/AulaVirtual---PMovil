import 'package:aula2/configs/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //<title/>
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, //<style/>
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('Aula Virtual - PM 2024-2')),
          //<body/>....
          body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('Mis cursos',
                          style: TextStyle(
                            fontSize: 23, //Tamaño de letra
                            fontWeight: FontWeight.w800, //Negrita
                          )),
                      Card(
                        color: AppColors.backgroundColor,
                        shadowColor: AppColors.secondaryColor,
                        child: Column(children: [
                          Image.network(
                              'https://i.ytimg.com/vi/Gi8dTDuRCOk/maxresdefault.jpg'),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 20,
                                  right: 10,
                                  top: 20), //PADDING PERSONALIZADO
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('600054',
                                      style: TextStyle(
                                        color: AppColors.secondaryColor,
                                      )),
                                  Text('Programación Movil - 872',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    children: [
                                      Text(
                                        'Activo',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 10),
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              top: 2,
                                              bottom: 2,
                                              right: 10),
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          child: Text(
                                            'Derecho Penal',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  Container(
                                    height: 2.0,
                                    color: Colors.grey,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 20.0),
                                  ),
                                  Text('Carlos Tevez',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ))
                        ]),
                      )
                    ],
                  ))
              //
              )),
    );
  }
}
