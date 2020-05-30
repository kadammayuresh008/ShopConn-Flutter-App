import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:shopconn/api/shopconnApi.dart';
import 'package:shopconn/const/Theme.dart';
import 'package:shopconn/notifier/authNotifier.dart';
import 'package:shopconn/screens/AddProductScreen.dart';
// import 'package:shopconn/widgets/CategorySelector.dart';
// import 'package:shopconn/widgets/HomeSliver.dart';
import 'package:shopconn/widgets/Item.dart';
import 'package:shopconn/widgets/NavDrawer.dart';
// import 'package:shopconn/widgets/ProductDisplay.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sc_PrimaryColor,
        elevation: 0,
        title: Text(
          "ShopConn",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            tooltip: 'Notification',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            tooltip: 'Saved Product',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              color: sc_PrimaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children:  <Widget>[
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          letterSpacing: 1.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: "Find Your\n"),
                          TextSpan(
                              text: "Product",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              )),
                          TextSpan(text: "  Here"),
                        ]
                    )
                  ),
                  SizedBox(height: 15.0,),
                  GestureDetector(
                    onTap: (){ print("going to search screen");},
                    child: Container(
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: sc_AppBarTextColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Icon(
                              Icons.search,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            "Search Here .....",
                            style: TextStyle(
                              fontSize: 16.0,
                              
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),

            //for testing purpose
            GestureDetector(
              onTap: () => signout(authNotifier),
              child: Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 30.0
                ),
              ),
            ),

            //end testing purpose


            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 7.0),
              child: Text(
                "Categories",
                style: TextStyle(
                  color: sc_ItemTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'assets/images/CatBooks.png',
                    height: 80.0,
                  ),
                  Image.asset('assets/images/CatClothes.png', height: 80.0,),
                  Image.asset('assets/images/CatNotes.png', height: 80.0,),
                  Image.asset('assets/images/CatOther.png', height: 80.0,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Newly Added",
                    style: TextStyle(
                      color: sc_ItemTitleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      color: sc_ItemTitleColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            Item(),
            Item(),
            Item(),
            Item(),
            Item(),
             
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProuctScreen()),
          );
          print("go to add product screen");
        },
        child: Icon(Icons.add),
        backgroundColor: sc_PrimaryColor
      ),

      drawer: NavDrawer(),
    );
  }
}
