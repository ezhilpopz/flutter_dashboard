import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  var height, width;

  List imgData = [
    "https://t4.ftcdn.net/jpg/05/15/17/75/360_F_515177527_E6MsyK5ta0uZlxTpWhol7ZqF5vDTtO4d.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNrBSGBu4dxiHLyJkqrgPYYW8eGcLwtF3g8A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjbYbigV-AVtfIbMdCXxX4tkQpxbYnhNWMhA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjbYbigV-AVtfIbMdCXxX4tkQpxbYnhNWMhA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjbYbigV-AVtfIbMdCXxX4tkQpxbYnhNWMhA&s",
  ];
  List titles = ["Analytics", "Check","Quiz","quiz","quiz"];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
                color: Colors.indigo,
                // height: height,
                width: width,
                child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              height: height * 0.25,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_RCRQClvbxPN2cBbacu9Osa6aeoRtwoaBg&s"))),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 30,
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                // height: height * 0.75,
                width: width,
                padding: EdgeInsets.only(
                  bottom: 20
                ),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 6)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                imgData[index],
                                width: 100,
                              ),
                              Text(titles[index],style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
                ),
              ),
        ));
  }
}
