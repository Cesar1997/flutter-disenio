import 'package:flutter/material.dart';
class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack( //coloca los elementos uno encima de otro
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _texto(),
      ],
    );
  }

  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }
  
  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texto(){
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text('11',style:  estiloTexto,),
          Text('Miércoles', style: estiloTexto),
          Expanded(child: Container(), ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white,size: 70.0)
        ],
      ),
    );
  }




  
  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorPagina2(),
        _botonFondo(),
      ],
    );
  }

  Widget _colorPagina2(){
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _botonFondo(){
    return Container(
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenido', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}