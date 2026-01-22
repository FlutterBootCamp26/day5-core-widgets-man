import 'package:flutter/material.dart';


class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;

    List names = ["Mohammed","Jawad","Sultan","wade3","Khalid Hr","Saleh","Ibrahim"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text("Hamster Pet Shop"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.symmetric(horizontal: 12),
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.black, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal,
                      // offset: Offset(0,0),
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/images/hamester.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 18),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("(${index+1}) ${names[index]}"),
                            SizedBox(height: 8),
                            Text("s@s.com"),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(onPressed: () {
                      print("Exam now");
                    }, child: Text("buy Now!!")),
                  ],
                ),
              );
            },
            
          )
        ),
      ),
    );
  }
}


/*

! MediaQuery
! Sizedbox
! Attributes & Style widgets
! Image 
! ListView
! listview.builder 
! Buttons

TextField
inkwell
Navigation
pass parameter between screens 

*/