import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: cuerpo(),
      ),
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage("https://s3.amazonaws.com/bethelmusic-production-cdn/mobile-bethel-music-hero.jpg"),
        fit: BoxFit.cover
        )
    ),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          imagen(),
          Container(
            color: Colors.transparent,
            height: 230,
          ),
          email(),
          password(),
          Text(""),
          enviar(),
          Text(""),
          Text(""),
          mensaje(),
          Text(""),
          mensaje1(),
        ],
      )
    ),
  );
}
Widget email(){
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextFormField(
        style: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            icon: Icon(Icons.person_outline,color: Colors.white, size: 37,),
            helperStyle: TextStyle(fontSize: 25.0)
        ),
      )
  );
}
Widget password() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    child: TextFormField(
      cursorColor: Colors.blue,
      obscureText: true,
      style: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        hoverColor: Colors.white,
        icon: Icon(Icons.lock, 
          color: Colors.white,
          size: 32,
        ),
      ),
    ),
  );
}
  Widget enviar(){
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      minWidth: 300.0,
      onPressed: () {},
      color: Colors.orange,
      textColor: Colors.white,
      child: Text(
        "Log in",
        style: TextStyle(fontSize: 19,
        ),
      ),
      padding: const EdgeInsets.all(8.0),
    );
  }
  Widget imagen(){
    return Image.asset("images/titulo1.png",
      height: 89,
    );
  }
Widget mensaje(){
    return Container(
     child: Text("Forgot password",
        style: TextStyle(fontSize: 17,
        color: Colors.white
     ),
   ),
);
}
Widget mensaje1(){
  return Container(
    child: Text("Terms & Conditions",
      style: TextStyle(fontSize: 17,
          color: Colors.white
      ),
    ),
  );
}