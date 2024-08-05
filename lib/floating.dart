import 'package:CodeCatalyst/languages.dart';
import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override

  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  bool isQuestionBox = true;
  String question = '';
  String code = '';
  bool _javaScriptSelected = false;
  bool _HTMLSelected = false;
  bool _CSSSelected = false;
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context,setState){
      return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.55, // Set the minimum height to half of the screen height
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(25),
                        ),
                        color: Color(0xff66a6ff)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text("Ask your coding confusions freely here: ",
                          style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            TextButton(onPressed: (){
                              setState(() {
                                isQuestionBox = true;
                              });
                            },
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.black
                              ),
                              child: Column(
                                children: [
                                  Text("Question Box",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  if(isQuestionBox)
                                    Container(
                                      height: 2,
                                      width: 80,
                                      color: Colors.white,
                                    )
                                ],
                              ) ,

                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(onPressed: (){
                              setState(() {
                                isQuestionBox = false;
                              });
                            },
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white
                              ),
                              child: Column(
                                children: [
                                  Text("Code Box",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  if(!isQuestionBox)
                                    Container(
                                      height: 2,
                                      width: 80,
                                      color: Colors.white,
                                    )
                                ],
                              ),

                            ),
                          ],
                        ),
                        Container(
                          width: 320,
                          height: 120,
                          child: TextFormField(
                            style: TextStyle(color: isQuestionBox ? Colors.black : Colors.white),
                            decoration: InputDecoration(
                                hintText: isQuestionBox? "Question":"Code",
                                hintStyle: TextStyle(color: isQuestionBox? Colors.black : Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: isQuestionBox? Colors.white:Colors.black,
                                filled: true
                            ),
                            key: ValueKey('question'),
                            maxLines: null,
                            expands: true,
                            minLines: null,
                            onSaved: (value){
                              isQuestionBox? question = value.toString():code = value.toString();
                            },
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Select programming language: ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _javaScriptSelected = true;
                                  _HTMLSelected = false;
                                  _CSSSelected = false;
                                });
                              },
                              child: Container(
                                  height: 85,
                                  width: 85,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: _javaScriptSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: Colors.white54,
                                      child: Column(
                                        children: [
                                          Padding(padding: EdgeInsets.all(5),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.asset('assets/logo/Java Script.png'),
                                            ),
                                          ),
                                          Text('Java Script',
                                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                  )
                              ),
                            ),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _javaScriptSelected = false;
                                  _HTMLSelected = true;
                                  _CSSSelected = false;
                                });
                              },
                              child: Container(
                                  height: 85,
                                  width: 85,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: _HTMLSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: Colors.white54,
                                      child: Column(
                                        children: [
                                          Padding(padding: EdgeInsets.all(5),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.asset('assets/logo/HTML.png'),
                                            ),
                                          ),
                                          Text('HTML',
                                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                  )
                              ),
                            ),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _javaScriptSelected = false;
                                  _HTMLSelected = false;
                                  _CSSSelected = true;
                                });
                              },
                              child: Container(
                                  height: 85,
                                  width: 85,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: _CSSSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: Colors.white54,
                                      child: Column(
                                        children: [
                                          Padding(padding: EdgeInsets.all(5),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.asset('assets/logo/CSS.png'),
                                            ),
                                          ),
                                          Text('CSS',
                                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                  )
                              ),
                            ),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Languages(),));
                              },
                              child: Container(
                                  height: 85,
                                  width: 85,
                                  child: Card(
                                      color: Colors.white54,
                                      child: Column(
                                        children: [
                                          Padding(padding: EdgeInsets.all(5),
                                            child: Container(
                                                height: 50,
                                                width: 50,
                                                child: Icon(Icons.arrow_forward_ios_rounded)
                                            ),
                                          ),
                                          Text('All',
                                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                  )
                              ),
                            )

                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 250,),
                            ElevatedButton(
                              onPressed: (){},
                              child: Text("Post",
                                style: TextStyle(color: Colors.black
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white54,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
              )
          )
      );
    }
    );
  }
}
