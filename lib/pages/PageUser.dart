import 'package:flutter/material.dart';
import 'package:flutter_application/models/animal.dart';
import 'package:flutter_application/pages/AnimalDetailScreen.dart';
import 'package:flutter_application/pages/Shopping.dart';

class PageUser extends StatefulWidget {
  final String user;

  PageUser({Key? key, required this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateUser();
  }
}

class StateUser extends State<PageUser> {
  final List<Animal> animals = [
    Animal(
      imageURL:
          "https://images.unsplash.com/photo-1588073882362-b4309c60cea0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: 'Canguro',
      description:
          'Los canguros son los marsupiales más grandes del mundo. Estos animales mamíferos solo habitan en Australia y son populares por sus colas musculosas, sus patas fuertes y sus orejas largas y puntiagudas. Además, como todos los marsupiales.',
      country: 'Australia',
      weight: '20.9Kg',
    ),
    Animal(
      imageURL:
          "https://images.unsplash.com/photo-1474511320723-9a56873867b5?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: 'Zorro',
      description:
          'El zorro es del tamaño de un perro mediano, aunque con el cráneo alargado y con el perfil superior casi recto, hocico my puntiagudo y las orejas grandes y triangulares. La cola es larga y está densamente cubierta de pelo.',
      country: 'Japon',
      weight: '12Kg',
    ),
    Animal(
      imageURL:
          "https://images.unsplash.com/photo-1574870111867-089730e5a72b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: 'Jirafa',
      description:
          'Este rumiante africano es el animal más alto conocido, llegando a alcanzar los 6 metros de altura. El largo cuello de las jirafas y las patas delanteras más largas que las traseras les permite alcanzar las hojas más altas de los árboles',
      country: 'Nueva Zelanda',
      weight: '1.000Kg',
    ),
    Animal(
      imageURL:
          "https://images.unsplash.com/photo-1507666405895-422eee7d517f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: 'Ardilla',
      description:
          'Este rumiante africano es el animal más alto conocido, llegando a alcanzar los 6 metros de altura. El largo cuello de las jirafas y las patas delanteras más largas que las traseras les permite alcanzar las hojas más altas de los árboles',
      country: 'Europa y Asia',
      weight: '300g',
    ),
    Animal(
      imageURL:
          "https://images.unsplash.com/photo-1578326457399-3b34dbbf23b8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: 'Cebra',
      description:
          'Este rumiante africano es el animal más alto conocido, llegando a alcanzar los 6 metros de altura. El largo cuello de las jirafas y las patas delanteras más largas que las traseras les permite alcanzar las hojas más altas de los árboles',
      country: 'Africa',
      weight: '400Kg',
    ),
  ];
  void borrarAnimal(Animal animal) {
    setState(() {
      animals.remove(animal);
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              SizedBox(width: 200, height: 0.0),
              Hero(
                tag: 'logo_discovery',
                child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0558/6413/1764/files/Discovery_Channel_Logo_Design_History_Evolution_0_1024x1024.jpg?v=1694070082",
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: animals.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimalDetailScreen(
                          animal: animals[index],
                          heroTag: 'animal_image_${animals[index].name}',
                          borrarAnimal: borrarAnimal,
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: 'animal_image_${animals[index].name}',
                          child: Image.network(
                            animals[index].imageURL,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              animals[index].name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'Nacionalidad: ${animals[index].country.toString()}'),
                            Text('Peso: ${animals[index].weight.toString()}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //         // context,
          //         // MaterialPageRoute(
          //         //   builder: (context) => Shopping(user: widget.user),
          //         // ),
          //         );
          //   },
          //   child: Text('Compras'),
          // ),
        ],
      ),
    );
  }
}
