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
        child: 
        Container(
          color: Color.fromARGB(255, 255, 173, 43),
          
          child: Padding(
            padding: EdgeInsets.all(1),
            child: Row(
              
            ),
          ),
        ),
      ),
      body: 
        Container(
          child: 
          Column(
            children: [
              Container(
                height: screenSize.height/2 +100,
                child: 
                Stack(
                 alignment: AlignmentDirectional.topCenter,
                  children: <Widget> [
                  Column(
                    children: <Widget>[
                      Container(
                        width: screenSize.width,
                        height: screenSize.height / 3,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 173, 43),
                          
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height / 6 +100 ,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 173, 43),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(200),
                            bottomRight:Radius.circular(200) ,)

                        ),
                      ),
                    ],
                  ),
                  
                  Image.asset('assets/images/fly.png', 
                    height: 323.96,
                    width: 246.99,
                    alignment: Alignment.bottomCenter,
                  ),
                  Positioned(
                    child: Image.asset('assets/images/logo2.png',
                    height: 40
                    ,
                    ),
                  )
                  ]),),
              SizedBox(
                height: 90),
              Stack( 
                alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          gradient: LinearGradient(
                          colors: [ 
                            Color.fromARGB(255, 121, 72, 153),
                            Color.fromARGB(255, 229, 60, 132),],
                          end: Alignment.bottomLeft,
                          begin: Alignment.topRight,)
                        ),
                        ),
                      
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => Login())
                          );
                        },
                        child: Container(
                        height: 38,
                        width: 158,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text( 
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Montserrat-SemiBold.ttf' ),
                      )

                        ),
                      ),)
                      

                    ]),
              
              SizedBox(
              height: 15,
              ),
              TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => Signup())
                          );
                        },
                        child:Container(
                alignment: Alignment.bottomCenter,
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        gradient: LinearGradient(
                          colors: [ 
                            Color.fromARGB(255, 121, 72, 153),
                            Color.fromARGB(255, 229, 60, 132),],
                          end: Alignment.bottomLeft,
                          begin: Alignment.topRight,)
                      ),
                      child: 
                      Center(
                        child:Text( 
                        "SIGN UP",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Montserrat-SemiBold.ttf' ),
                      )),),
                 
                  
                  ),
            ])))
              ; }}

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);


  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Container (height:screenSize.height, child: 
      Column(
        children: <Widget>[
            Stack( alignment: Alignment.centerRight,children: <Widget>[
            Image.asset(
              'assets/images/topshape.png',
              height: 300,
              width: screenSize.width,
            ),
            
            Column(children: [
              SizedBox(height: 70,),
              Image.asset('assets/images/astrotilt.png',
                height: 250,
                fit:BoxFit.cover,
                )
          ]),]),
          SizedBox(height: 40,),
          
          Container(
            width: 300,
            height: 45,
            alignment: Alignment.topCenter,
            child: Material(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Username',

              ),
            ),
          )),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 45,
            alignment: Alignment.topCenter,
            child: Material(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
                labelText: 'Password',

              ),
            ),
          )),
          SizedBox(height: 40,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 40,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [ 
                    Color.fromARGB(255, 121, 72, 153),
                    Color.fromARGB(255, 229, 60, 132),],
                  end: Alignment.bottomLeft,
                  begin: Alignment.topRight,)
            ),
              child: 
              TextButton( 
              onPressed:  () {
                Navigator.push(
                  context, 
                    MaterialPageRoute(builder: (context) => Login())
                    );
                        },
                child:Center(
                  child:Text(      
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Montserrat-SemiBold.ttf' ),
                      )))
                      ),
        ],)
      
    ));
  }
}


class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;


    return Material( type: MaterialType.transparency, child: new
    Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Container (child: 
      Column(
        children: <Widget>[
          Stack( alignment: Alignment.centerRight,children: <Widget>[
            Image.asset(
              'assets/images/topshape.png',
              height: 300,
              width: screenSize.width,
            ),
            
            Column(children: [
              SizedBox(height: 70,),
              Image.asset('assets/images/astrotilt.png',
                height: 250,
                fit:BoxFit.cover,
                )
          ]),]),
          SizedBox(height: 40,),
          Container(
            alignment: Alignment(300, 100),
            width: 300,
            height: 45,
            child: Material(
            child: TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Patient ID*',
                hintText: 'Patient ID'

              ),
            ),
          )),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 45,
            alignment: Alignment.topCenter,
            child: Material(
            child: TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Name',
                hintText: 'Name',

              ),
            ),
          )),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 45,
            alignment: Alignment.topCenter,
            child: Material(
            child: TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Diagnosis',
                hintText: 'Diagnosis'

              ),
            ),
          )),
          SizedBox(
            height: 40,
          ),
          
          //SIGNUP BUTTON STARTS HERE
          Container(
            alignment: Alignment.bottomCenter,
            height: 40,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [ 
                    Color.fromARGB(255, 121, 72, 153),
                    Color.fromARGB(255, 229, 60, 132),],
                  end: Alignment.bottomLeft,
                  begin: Alignment.topRight,)
            ),
            
              //child: 
              //TextButton( 
              //onPressed:  () {
                //Navigator.push(
                  //context, 
                    //MaterialPageRoute(builder: (context) => =())
                    //);
                    //    },
                child:Center(
                  child:Text(      
                    "SIGNUP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Montserrat-SemiBold.ttf' ),
                      ))),
          
        ],)
      
    )
    ));
  }
}