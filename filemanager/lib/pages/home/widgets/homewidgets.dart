import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:filemanager/pages/home/styles/style.dart';





class CustomSearchDelegate extends SearchDelegate {



List<String>  searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
];

@override
List<Widget>? buildActions(BuildContext context){
    return[
        IconButton(
          onPressed: (){
            query = " ";
          },
          icon: Icon(Icons.clear),
        )
    ];
}


  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: (){
        close(context, null);
      },
      icon: Icon(Icons.arrow_back)
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = []; 
    for(var folder in searchTerms){
      if(folder.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(folder);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context , index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
     List<String> matchQuery = []; 
    for(var folder in searchTerms){
      if(folder.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(folder);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context , index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }
    );
}
}

class CustomPercentProggress extends StatelessWidget {
  const CustomPercentProggress ({super.key}); 

  @override
  Widget build(BuildContext context) {

        return Expanded(
          child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                                width: 322, 
                                height: 48,
                                
                                  child: Text(
                                    "289GB\nFree" , 
                                    textAlign: TextAlign.left, 
                                    style: percentTextStyle,
                                    ),
                              ),
                            
                          CircularPercentIndicator(
                            backgroundColor: Color.fromARGB(222, 222, 222,222),
                            startAngle: 360,
                            radius: 124.0,
                            lineWidth: 24.0,
                            animation: true, 
                            percent:0.75 ,
                            center: Text(
                              "75%\nused",
                              style: TextStyle(
                                fontSize: 34 , 
                                fontWeight:FontWeight.bold, 
                                color: Colors.purple 
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.purple,
                          ), 
                           SizedBox(
                                width: 322, 
                                height: 48,
                                  child: Text(
                                    "785GB\nused" , 
                                    textAlign: TextAlign.right,
                                        style: percentTextStyle,
                                    ),
                              ),
                          ] 
                        ),
                      ),
                    ),
        )
        );
  }
}


class CustomCategory extends StatelessWidget {

final List <String> Sections = <String> ["Docs","Images","Videos","Music"];
final List <String> Icons = <String> [];




@override
  Widget build(BuildContext context) {
      return ListView.builder(

            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext  context, index) {
                  return Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1 , 
                        color: Colors.black
                      )
                    ),
                    width: 64, 
                    height: 94, 
                    child:Text("${Sections[index]}" )
                  );
                 
                  
            },
          );
        
  }



}
