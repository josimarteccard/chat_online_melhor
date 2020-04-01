import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
  //adicionar no banco
  //Firestore.instance é um sigonton ou seja só tem uma instancia
//  Firestore.instance.collection("mensagens").document().setData({
//    "campod": "valord"
//  });
  //para atualizar um dado
//  Firestore.instance.collection("mensagens").document("Oz7gzadn6ZD0nj7DnXGO").updateData({
//    "campo": "vafdsfdsfdsfdsfdslor"
//  });

  //duas formas de ler as mensagens
  //ler os dados uma vez
  //obter o dado sempre atualizado
  //snapshot pois é uma copia dos documentos no momento
//  QuerySnapshot snapshot = await Firestore.instance.collection("mensagens").getDocuments();
//  snapshot.documents.forEach((document){
//    print(document.data);
//  });

  //ler mensagem específica
//  DocumentSnapshot documentSnapshot = await Firestore.instance.collection("mensagens").document("Oz7gzadn6ZD0nj7DnXGO").get();
//  print(documentSnapshot.data);
//  print(documentSnapshot.documentID);

  //quero criar um novo campo na referencia dele
//  QuerySnapshot snapshot = await Firestore.instance.collection("mensagens").getDocuments();
//  snapshot.documents.forEach((document){
//    print(document.data);
//    document.reference.updateData({
//      "campo":"fdsfds"
//    });
//  });

  //atualização em tempo real
//  Firestore.instance.collection("mensagens").snapshots().listen((dado){
//    dado.documents.forEach((document){
//      print(document.data);
//    });
//  });

  //quero que leia a todo momento um documento específico
  Firestore.instance.collection("mensagens").document("Oz7gzadn6ZD0nj7DnXGO").snapshots().listen((dado){
    print(dado.data);
  });

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
