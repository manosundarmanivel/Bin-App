import 'package:app/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 250, 250, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Icon(
                Icons.rebase_edit,
                size: 100,
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'BinEase',
                style: GoogleFonts.julee(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Name',
                ),
                validator: (value) {
                  if (value != null && value.length < 10) {
                    return 'Invalid Name';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      // Toggle password visibility
                    },
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Password',
                ),
                validator: (value) {
                  if (value != null && value.length < 5) {
                    return 'Please Enter a Valid Password';
                  }
                  return null;
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 40),
                  child: Text(
                    "Already Have An Account ?",
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: TextButton(
                    child: Text("Login Here"),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.only(top: 15, bottom: 15, right: 130, left: 130),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                ),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomePage())))
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 100),
              child: Row(
                children: [
                  Text(
                    "Developed by Goal Drivers",
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
