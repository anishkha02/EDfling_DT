import 'package:edflingdatingapp/SliderScreen.dart';
import 'package:flutter/material.dart';
import 'package:edflingdatingapp/myProfile.dart';
class myProfile extends StatefulWidget {
  const myProfile({Key? key}) : super(key: key);

  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
   //String valueChoose;
   List listItem=["Male","Female","Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.pinkAccent,
        title: Text('My Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white ,
          onPressed: () {   },

        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color:  Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/profile image.jpg"),
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color:  Colors.white
                            ),
                            color: Colors.pinkAccent
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("    Full name", "    Micheal"),
              buildTextField("    Email id", "    Micheal123@gmail.com"),
              buildTextField("    Phone Number", "    +62584561354"),
              buildTextField("    Location", "    New York"),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 30,right: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent,width: 1),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: DropdownButton(
                        hint: Text("Select Gender "),
                        dropdownColor: Colors.grey,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),
                      //  value: valueChoose,
                        onChanged: (newValue){
                          setState(() {
                           // valueChoose=newValue;
                          });
                        },
                        items: listItem.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
              ),



              SizedBox(
                height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Text("Continue",style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(horizontal: 125),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),)
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
  Widget buildTextField(String labelText, String placeholder){
    return Padding(padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pinkAccent),
          borderRadius: BorderRadius.circular(30)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent)
        ),
        contentPadding: EdgeInsets.only(bottom: 5),
        labelText: labelText,
        //floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,

        )
      ),
    ),
    );
  }
}
