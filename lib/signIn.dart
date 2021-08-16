import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool showvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B8AE7),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff3B8AE7),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Email',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 12.0),
                    child: Icon(
                      Icons.email,
                      color: Colors.white,
                    ), // myIcon is a 48px-wide widget.
                  ),
                  fillColor: Color(0xff69A7F0),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff69A7F0), width: 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade300,
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Password',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 12.0),
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ), // myIcon is a 48px-wide widget.
                ),
                fillColor: Color(0xff69A7F0),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff69A7F0), width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: "Enter your Password",
                hintStyle: TextStyle(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'Forgot Password?',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Checkbox(
                  value: this.showvalue,
                  checkColor: Colors.blue,
                  activeColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      this.showvalue = value;
                    });
                  },
                ),
                Text(
                  'Remember me?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {
                  // Respond to button press
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Text(
            "- OR -",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "sign in with",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTImj5adg1sNvD0iCEQcjIGr-CZGuiX1or61w&usqp=CAU"),
              ),
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwvNMlXBIkhl9RpphnCYfvx-XKViVcgosy6jWYctZQnmIyo7H3dQjIVQOFuELhfsbwnnk&usqp=CAU"),
              ),

            ],
          ),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Don't Have An Account ?",style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),),
              Text(" Sign Up",style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),



        ],

      ),
    );
  }
}
