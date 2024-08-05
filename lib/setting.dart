import 'package:flutter/material.dart';
import 'change_pass.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: ElevatedButton(
              onPressed: (){
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => ChangePass(),
               )
           );
              },
              child: Text("Change Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          )
        ),
      ),
    );
  }
}
