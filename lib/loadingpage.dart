import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Color.fromARGB(1, 51, 174, 241),
          
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              
            ),
          ),
        ),
      ),
      body: 
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 173, 43)
            ),
          child: Stack(
            children: <Widget> [
                  Image.asset('assets/images/standing2.png', 
                    height: 298,
                    width: 195,
                    alignment: Alignment.center,
                    ),
                    
                    
                    
                  

                  
                  
            
            ]),
            
            


          ));
        
        
    
          
          
          
          
          


        

                
              


      
    }
}

