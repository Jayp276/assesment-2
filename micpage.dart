import "package:flutter/material.dart";
import "package:note_app/screen1.dart";


class micpage extends StatefulWidget {
  const micpage({super.key});

  @override
  State<micpage> createState() => _micpageState();
}

class _micpageState extends State<micpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Paris",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),

         backgroundColor: Color.fromARGB(255, 201, 189, 83),

actions: 
[
   
                 // SizedBox(width: 190),
                  Icon(Icons.brush),
                  SizedBox(width: 20),
                  Icon(Icons.more_vert),
                  SizedBox(width: 25,)
],
      ),
      backgroundColor: Color.fromARGB(255, 201, 189, 83),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
           
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 20,left: 10),
              child: Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/paris.jpg",height: 200,fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,right: 20),
              child: Text("Paris is the capital and most populous city of France. With an official estimated population of 2,102,650 residents as of 1 January 2023[2] in an area of more than 105 km2 Paris is the fourth-most populated city in the European Union and the 30th most densely populated city in the world in 2022. Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy. For its leading role in the arts and sciences, as well as its early and extensive system of street lighting, in the 19th century, it became known as the City of Light."
              ),
            ),

        SizedBox(height: 10,),
         Container(
          height: 70, 
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white, 
            border: Border.all(color: Colors.black)
          ),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow)), 
              Image.asset("assets/images/voice.png" ,height: 100,width: 140,), 
                              Image.asset("assets/images/voice.png" ,height: 100,width: 140,), 
                              SizedBox(width: 10,),
                              Text("00:10", style: TextStyle(fontSize: 16),)
        
            ],
          ),
         ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,right: 20),
              child: Text("The City of Paris is the centre of the Île-de-France region, or Paris Region, with an official estimated population of 12,271,794 inhabitants on 1 January 2023, or about 19% of the population of France.The Paris Region had a GDP of €765 billion in 2021, the highest in the European Union. According to the Economist Intelligence Unit Worldwide Cost of Living Survey, in 2022, Paris was the city with the ninth-highest cost of living in the world."),
            ),
          ],
        ),
      ),
    );
  }
}