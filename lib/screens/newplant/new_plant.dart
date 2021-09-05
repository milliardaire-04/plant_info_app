import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:plant_info/constants.dart';
import 'package:plant_info/models/data.dart';
import 'package:plant_info/models/plants.dart';

import 'components/input_field.dart';

class NewPlantScreen extends StatefulWidget {
  const NewPlantScreen({ Key? key }) : super(key: key);

  @override
  _NewPlantScreenState createState() => _NewPlantScreenState();
}

class _NewPlantScreenState extends State<NewPlantScreen> {
  

  final title = TextEditingController();
  final country = TextEditingController();
  final price = TextEditingController();
  final url = TextEditingController();

  void addPlant() {
    if(_formKey.currentState!.validate()){
      plants.add(Plant(title: title.text, country: country.text, price: int.parse(price.text), url: url.text));
      setState(() {
      title.clear();
      country.clear();
      price.clear();
      url.clear();
      CoolAlert.show(
          context: context,
          type: CoolAlertType.success,

          text: 'New Plant Created',
          autoCloseDuration: Duration(seconds: 2),
        );
    });
    }
  }
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Plant"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  InputField(tec: title, text: "Title", ico: Icons.title),
                  InputField(tec: country, text: "Country", ico: Icons.place),
                  InputField(tec: price, text: "Price", ico: Icons.money),
                  InputField(tec: url, text: "URL", ico: Icons.link),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: addPlant,
                    
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor)
                    ),
                    child: Text("Add New Plant")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

