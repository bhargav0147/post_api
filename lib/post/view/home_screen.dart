import 'package:flutter/material.dart';
import 'package:post_api/post/provider/postProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PostProvider? postProviderFalse;
  PostProvider? postProviderTrue;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtPrice = TextEditingController();
  TextEditingController txtOffer = TextEditingController();
  TextEditingController txtCate = TextEditingController();
  TextEditingController txtRate = TextEditingController();
  TextEditingController txtDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    postProviderFalse = Provider.of<PostProvider>(context, listen: false);
    postProviderTrue = Provider.of<PostProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Post Api",
          style: TextStyle(color: Colors.black, letterSpacing: 1,fontWeight: FontWeight.bold,fontSize: 25),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            postProviderFalse!.getJson(
                cate1: txtCate.text,
                desc1: txtDesc.text,
                name1: txtName.text,
                offer1: txtOffer.text,
                price1: txtPrice.text,
                rate1: txtRate.text);
          },
          child: Center(
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: txtName,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text("Name"),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtPrice,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text("Price"),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtOffer,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text("Offer"),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtCate,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text("Cate"),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtRate,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text("Rate"),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtDesc,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  label: Text("Desc"),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    ));
  }
}
