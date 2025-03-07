import 'package:flutter/material.dart';

void main() {
  runApp(const ElevatedButtonAutonomo());
}

class ElevatedButtonAutonomo extends StatefulWidget {
  const ElevatedButtonAutonomo({super.key});

  @override
  _ElevatedButtonAutonomoState createState() => _ElevatedButtonAutonomoState();
}

class _ElevatedButtonAutonomoState extends State<ElevatedButtonAutonomo> {
  bool isLiked = false;

  final List<Map<String, dynamic>> buttonData = [
    {'label': 'Me gusta', 'icon': Icons.thumb_up, 'color': Colors.blue},
    {'label': 'Compartir', 'icon': Icons.share, 'color': Colors.green},
    {'label': 'Guardar', 'icon': Icons.save, 'color': Colors.orange},
    {'label': 'Eliminar', 'icon': Icons.delete, 'color': Colors.red},
    {'label': 'Editar', 'icon': Icons.edit, 'color': Colors.purple},
    {'label': 'Buscar', 'icon': Icons.search, 'color': Colors.teal},

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF8D5CB), // Color de fondo según la imagen
        appBar: AppBar(
          backgroundColor: Color(0xFFA33300), // Color del AppBar
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Mederyth Azul Torres',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              Text(
                'Mat: 22308051281108',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Arial',
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Contenedor con el texto oddmatte
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFA33300), // Color del contenedor
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'oddmatte',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Fila con los botones existentes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 40), // Ancho y alto del botón
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text(isLiked ? 'Liked' : 'Like'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size(100, 40), // Ancho y alto del botón
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Next'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Contenedor para los 8 nuevos botones
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: List.generate(buttonData.length, (index) {
                    final data = buttonData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Acción del botón
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 40), // Ancho y alto del botón
                          backgroundColor: data['color'],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        icon: Icon(
                          data['icon'],
                          color: Colors.white,
                        ),
                        label: Text(data['label']),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
