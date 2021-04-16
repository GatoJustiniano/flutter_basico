import 'dart:async';

import 'package:flutter/material.dart';


class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_agregar();

        fetchData();

      }
    });
  }

  @override
  void dispose() {
    //Elimina el scroll una vez se deje la pantalla, ahorro de memoria
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo para List'),
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista(){
    return RefreshIndicator(

        onRefresh: obtenerPagina1,

        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index){

          final imagen = _listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen')
          );
        },
      ),
    );
  }

  Widget _agregar(){
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }

    setState(() {
      
    });
  }

  Future<Null> fetchData() async {
    _isLoading = true;

    setState(() {
      
    });

    final duracion = new Duration(seconds: 2);

    return new Timer(
      duracion, 
      respuestaHTTP
    );

  }


  void respuestaHTTP() {

    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100, 
      duration: Duration(milliseconds: 250), 
      curve: Curves.decelerate
    );


    _agregar();
  }

  Widget _crearLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:  MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 20.0,)
        ],
      );
    } else {
      return Container(

      );
    }
  }

  Future<Null> obtenerPagina1() async {
    final duracion = new Duration( seconds: 2);
    new Timer(duracion, (){
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar();
    });

    return Future.delayed(duracion);
  }
}