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
@override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: 600, 
              decoration: BoxDecoration(),
              child: Text("Category",textAlign: TextAlign.left,style: categoryTextStyle,),
            ), 
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    height: 104,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            child: IconButton(
                            constraints: BoxConstraints(
                              minWidth: 64, 
                              minHeight: 64 , 
                            ),
                              onPressed: (){}, 
                              icon: Icon(Icons.document_scanner), 
                              color: Colors.lightGreen, 
                              iconSize: 38,
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(95, 174, 241, 174)),
                              ),
                            ),
                          ),
                        ), 
                        SizedBox(
                          child: Text("Docs"),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    height: 104,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox( 
                            child: IconButton(
                            constraints: BoxConstraints(
                              minWidth: 64, 
                              minHeight: 64 , 
                            ),
                              onPressed: (){}, 
                              icon: Icon(Icons.image), 
                              color: Colors.lightBlue, 
                              iconSize: 38,
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(96, 191, 232, 255)),
                              ),
                            ),
                          ),
                        ), 
                        SizedBox(
                          child: Text("Image"),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    height: 104,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox( 
                            child: IconButton(
                            constraints: BoxConstraints(
                              minWidth: 64, 
                              minHeight: 64 , 
                            ),
                              onPressed: (){}, 
                              icon: Icon(Icons.video_collection), 
                              color: const Color.fromARGB(255, 252, 0, 0), 
                              iconSize: 38,
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(95, 255, 191, 191)),
                              ),
                            ),
                          ),
                        ), 
                        SizedBox(
                          child: Text("Videos"),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    height: 104,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox( 
                            child: IconButton(
                            constraints: BoxConstraints(
                              minWidth: 64, 
                              minHeight: 64 , 
                            ),
                              onPressed: (){}, 
                              icon: Icon(Icons.music_note), 
                              color: const Color.fromARGB(255, 252, 134, 0), 
                              iconSize: 38,
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(95, 255, 227, 191)),
                              ),
                            ),
                          ),
                        ), 
                        SizedBox(
                          child: Text("Music"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
      ));
  }
}
