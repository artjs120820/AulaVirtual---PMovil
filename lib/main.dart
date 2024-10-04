import 'package:aula2/components/courses_card.dart';
import 'package:aula2/configs/app_theme.dart';
import 'package:aula2/configs/colors.dart';
import 'package:aula2/pages/home/home_page.dart';
import 'package:flutter/material.dart';

//Rutas a las paginas
import 'pages/sing_in/sing_in_page.dart';
import 'pages/sing_up/sing_up_page.dart';
import 'pages/reset/reset_page.dart';

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
        theme: AppTheme.lightTheme(),
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0)),
        //   useMaterial3: true,
        // ),
        darkTheme: AppTheme.darkTheme(),
        // darkTheme: ThemeData.dark().copyWith(
        //     primaryColor: Colors.blue,
        //     inputDecorationTheme: InputDecorationTheme(
        //         border: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.blue),
        //         ),
        //         focusedBorder: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.blueAccent),
        //         ),
        //         enabledBorder: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.grey),
        //         ))),
        themeMode: ThemeMode.system,
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true, //<style/>
        // ),
        // // home: Scaffold(
        // //   appBar: AppBar(title: Text('Aula Virtual - PM 2024-2')),
        // //   body: HomePage()//<body/>....
        // // ),
        initialRoute: '/sing_in',
        routes: {
          '/home': (context) => (Scaffold(
                appBar: null,
                body: HomePage(), //<body/>....
              )),
          '/sing_in': (context) => SingInPage(),
          '/sing_up': (context) => SingUpPage(),
          '/reset': (context) => ResetPage(),
        });
  }
}

/*
body: const SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('Mis cursos',
                          style: TextStyle(
                            fontSize: 23, //Tamaño de letra
                            fontWeight: FontWeight.w800, //Negrita
                          )),
                      CoursesCard(
                        cursonombre: 'Ingeniería de datos',
                        estadocurso: 'Finalizado',
                        tagtext: 'Critico',
                        tagcolor: Color.fromARGB(255, 113, 13, 243),
                        docente: 'Pepe Valdivia',
                        image:
                            'https://fotos.perfil.com/2021/03/08/0308husky-1138538.jpg',
                      ),
                      CoursesCard(
                        cursonombre: 'Literatura',
                        estadocurso: 'En curso',
                        tagtext: 'Creeper',
                        tagcolor: Color.fromARGB(255, 100, 247, 3),
                        docente: 'Joako creeper',
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbGeXe_SWRXu1Azl71YqRHEjIa6KgjkpI1fw&s',
                      )
                    ],
                  ))
              //
              )

 */
