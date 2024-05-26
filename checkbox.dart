import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  List<Map> availableHobbies = [
    {"name": "Notre Dame de Paris", "isChecked": false},
    {"name": "Arc de Triomphe", "isChecked": false},
    {
      "name": "Musee d'Orsay",
      "isChecked": false,
    },
    {"name": "Montmartre", "isChecked": false},
    {"name": "Palace of Versailies", "isChecked": false},
     {"name": "Sainte Chapelle", "isChecked": false}, 
     {"name": "Elffel Tower", "isChecked": false},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place to Visit", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [
          
                 // SizedBox(width: 190),
                  Icon(Icons.brush, color: Colors.white,),
                  SizedBox(width: 20),
                  Icon(Icons.more_vert,color: Colors.white,),
                  SizedBox(width: 25,)
        ],
        
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Column(
                children: availableHobbies.map((hobby) {
              return CheckboxListTile(
                  value: hobby["isChecked"],
                  onChanged: (newValue) {
                    setState(() {
                      hobby["isChecked"] = newValue;
                    });
                  },
                                    title: Text(hobby["name"], style: TextStyle(color: Colors.white),),

                  );
            }).toList()
            
            ),

                  const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: availableHobbies.map((hobby) {
                if (hobby["isChecked"] == true) {
                  return Card(
                    elevation: 3,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(hobby["name"]),
                    ),
                  );
                }

                return Container();
              }
              ).toList(),
            )
        ],
      ),
    );
  }
}