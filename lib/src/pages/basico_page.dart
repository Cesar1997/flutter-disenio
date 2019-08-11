import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
      )
    );
  }

 Widget _crearImagen() {
   return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          height: 200.0,
          fit: BoxFit.cover,
      ),
   );
 }

 Widget _crearTitulo() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded( //Expanded se utiliza para utilizar el ancho posible sin quitarle sus pixeles
                      //a los iconos o textos
              child: Column(
                //cross es vertical, en mainAxis es horizontal
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTitulo,),
                  SizedBox(height: 7.0),
                  Text('Un lago en alemania', style: estiloSubtitulo,)
                ],
              ),
            ),
            Icon(Icons.star, color : Colors.red, size : 30.0),
            Text('41', style: TextStyle( fontSize: 20.0),)
          ],
        ),
      ),
    );
 }

 Widget _crearAcciones() {
    return Row(
      //Verificar los tipos de espaciados .
      //distribuye cada una dimension de sus hijos de manera proporciolal
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
       _accion(Icons.call, 'CALL'),
       _accion(Icons.near_me,'ROUTE'),
       _accion(Icons.share, 'SHARE')
      ],
    );
  }

 Widget _accion(IconData icon, String texto){
     return Column(
        children: <Widget>[
          Icon(icon, size: 40.0, color: Colors.blue,),
          SizedBox(height: 5.0),
          Text(texto, style: TextStyle(fontSize: 15.0, color : Colors.blue), )
        ],
    );
  }

 Widget _crearTexto() {
   return SafeArea(
      child: Container(
       padding: EdgeInsets.symmetric( horizontal: 40.0),
       child: Text(
         'Eu exercitation consequat velit in dolore magna sit minim sit ea veniam aute nostrud officia. Amet veniam exercitation officia proident quis et exercitation reprehenderit reprehenderit ex reprehenderit. Deserunt enim fugiat culpa ea.',
         textAlign: TextAlign.justify,
          
       ),
     ),
   );
 }
}