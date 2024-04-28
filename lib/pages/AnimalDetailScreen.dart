import 'package:flutter/material.dart';
import 'package:flutter_application/models/animal.dart';

class AnimalDetailScreen extends StatefulWidget {
  final Animal animal;
  final String heroTag;
  final Function(Animal) borrarAnimal;

  AnimalDetailScreen(
      {required this.animal,
      required this.heroTag,
      required this.borrarAnimal});

  @override
  _AnimalDetailScreenState createState() => _AnimalDetailScreenState();
}

class _AnimalDetailScreenState extends State<AnimalDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(
              tag: 'animal_image_${widget.animal.name}',
              child: Image.network(
                widget.animal.imageURL,
                width: 500,
                height: 400,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.animal.description,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text('¿Deseas eliminar esta especie?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Eliminar');
                          },
                          child: Text('Eliminar'),
                        ),
                      ],
                    ),
                  ).then((value) {
                    if (value == 'Eliminar') {
                      widget.borrarAnimal(widget.animal);
                    }
                  });
                },
                child: Text('Eliminar especie'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
