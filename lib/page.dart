import 'package:flutter/material.dart';
class input extends StatefulWidget {
  const input({super.key});

    State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  //form
  final GlobalKey<FormState> formKey = GlobalKey();
  //textField
  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();
bool _test = false;

  bool apple = false;
  bool banana = false;
  bool orange = false;
  String?anm;
String?pet;
   void checkRadio(String value ) {
      setState(() {
        anm = value;
        pet =value;
      });
    }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Center(
        child: Form(
          child: ListView(
            key: formKey,
            children: [
              Text("TextFormField#1"),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _text1,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              
              Text("TextFormField#2"),
              TextFormField(
                keyboardType: TextInputType.url,
                obscureText: true,
                controller: _text2,
                onChanged: (value) {
                  setState(() {});
                },
              ),
             
              Text("TextFormField#3"),
              TextFormField(

                controller: _text3,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 3, color: Colors.blueAccent), 
    ),
                  prefixIcon: Icon(Icons.account_box),
                  labelText: 'Text',
                  hintText: 'Input text',
                  filled: true,
                ),
                onChanged: (value) {
                  setState(() {
                    
                  });
                },
              ),
               Text("ShowInput : ${_text1.text}"), 
               Text("ShowInput : ${_text2.text}"),
               Text("ShowInput : ${_text3.text}"),


               Text("\nPet?"),
                   RadioListTile(
          title: Text("No"),
          value: "No", 
          groupValue: pet, 
          onChanged: (value){
            setState(() {
                pet = value.toString();
            });
          },
      ),

      RadioListTile(
          title: Text("Yes"),
          value: "Yes", 
          groupValue: pet, 
          onChanged: (value){
            setState(() {
                pet = value.toString();
            });
          },
      ),


              
               Text("\nRadioListTile#1"),
                   RadioListTile(
          title: Text("Cat"),
          value: "cat", 
          groupValue: anm, 
          onChanged: (value){
            setState(() {
                anm = value.toString();
            });
          },
      ),

      RadioListTile(
          title: Text("Dog"),
          value: "dog", 
          groupValue: anm, 
          onChanged: (value){
            setState(() {
                anm = value.toString();
            });
          },
      ),

      RadioListTile(
            title: Text("Other"),
            value: "other", 
            groupValue: anm, 
            onChanged: (value){
              setState(() {
                  anm = value.toString();
              });
            },
      ),
      Text("Pet (Y/N) : $pet" ),
      Text("Show Radio :  ${anm} ")  , 


Text("\nCheckBoxTest"),

CheckboxListTile(
   title: Text("Checkbox"),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            value: _test,
            onChanged: (value) {
              setState(() {
                       _test = value!;
              });
            }
            
), 
          
        Text("Show Radio :  ${_test} ")  ,

          CheckboxListTile(
            title: const Text('Apple'),
            value: apple,
            onChanged: (bool? value) {
              setState(() {
                apple = value!;
              });
            },
          ),

          CheckboxListTile(
            title: const Text('Banana'),
            value: banana,
            onChanged: (bool? value) {
              setState(() {
                banana = value!;
              });
            },
          ),

          CheckboxListTile(
            title: const Text('Orange'),
            value: orange,
            onChanged: (bool? value) {
              setState(() {
                orange = value!;
              });
            },
          ),

             Text("Apple : $apple" ),
            Text("Banana : $banana" ),
      Text("Orange :  ${orange} "),

            ],       // child    
          ),
          
   

        ),
      ),
    );
  }
}
