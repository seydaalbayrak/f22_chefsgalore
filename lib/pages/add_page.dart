import 'dart:io';

import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: sPrimary),
      home: Scaffold(
        backgroundColor: sBackground,
        appBar: AppBar(
          centerTitle: true,
          title:  Text("Yeni Bir Yemek Tarifi",style: sPoppinsBold.copyWith(
          color: sBlack,
          fontSize: 22,
        ),),
          backgroundColor: sWhite,
          elevation: 0,
        ),
        body: MyAddPage(),
      ),
    );
  }
}

class MyAddPage extends StatefulWidget {
  const MyAddPage({super.key});

  @override
  _MyAddPageState createState() => _MyAddPageState();
}

class _MyAddPageState extends State<MyAddPage> {
  List<String> ingredientList = [];
  var foodTitleText = TextEditingController();
  var ingredientText = TextEditingController();
  var recipeText = TextEditingController();
  String foodTitle = "";
  String ingredient = "";
  String recipe = "";
  File? _image;

  void addIngredient() {
    ingredient = ingredientText.text.toString();
    setState(() {
      if (ingredient.isNotEmpty || ingredient != "") {
        ingredientList.add(ingredient);
        ingredientText.clear();
      }
    });
  }

  Future<void> pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: pickImage,
                  child: Container(
                    decoration: BoxDecoration(
                      color: sPrimary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: _image == null
                        ? Image.asset(
                            'assets/images/addImage.png',
                          )
                        : Image.file(
                            _image!,
                            width: 250,
                            height: 250,
                          ),
                  ),
                ), //Resim

                const SizedBox(
                  height: 5,
                ),
                 Text(
                  'Başlık',
                  style: sPoppinsBold.copyWith(
                    fontSize: 18,
                    color: sBlack
                  )
                ),

                TextField(
                  controller: foodTitleText,
                  decoration: const InputDecoration(
                    hintText: 'Yemeğin Başlığını Giriniz',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: sPrimary), // Odaklandığında alt çizgi rengi
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: sGray4), // Etkin durumdayken alt çizgi rengi
                    ),
                  ),
                ), //Başlık gir

                const SizedBox(height: 5),

                 Text(
                  'Malzeme Listesi',
                  style: sPoppinsBold.copyWith(
                    fontSize: 18,
                    color: sBlack
                  )
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: ingredientText,
                        decoration: const InputDecoration(
                          hintText: 'Yemeğin Başlığını Giriniz',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    sPrimary), // Odaklandığında alt çizgi rengi
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    sGray4), // Etkin durumdayken alt çizgi rengi
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: addIngredient,
                      style:
                          ElevatedButton.styleFrom(backgroundColor: sPrimary),
                      child: const Text('Ekle'),
                    ),
                  ],
                ), //Malzemeler

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: ingredientList.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                          (index + 1).toString() + "-" + ingredientList[index]),
                    );
                  },
                ),
                const SizedBox(height: 16),
                 Text(
                  'Tarif',
                  style: sPoppinsBold.copyWith(
                    fontSize: 18,
                    color: sBlack
                  )
                ),

                TextField(
                  controller: recipeText,
                  decoration: const InputDecoration(
                    hintText: 'Yemeğin Tarifini giriniz',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: sPrimary), // Odaklandığında alt çizgi rengi
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: sGray4), // Etkin durumdayken alt çizgi rengi
                    ),
                  ),
                  maxLines: null,
                ),

                const SizedBox(height: 12),

                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},

                    ///Veri Veri tabanaına ekle
                    child: Text("OK"),
                    style: ElevatedButton.styleFrom(backgroundColor: sPrimary),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
