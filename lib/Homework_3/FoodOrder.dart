import 'package:flutter/material.dart';

class FoodOrder extends StatefulWidget {

  @override
  State<FoodOrder> createState() => _FoodOrderState();
}

class _FoodOrderState extends State<FoodOrder> {
  var secilenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Menu",style: TextStyle(fontFamily: "Dancing",fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: ImageIcon(AssetImage("lib/Homework_3/Images/shopping_cart.png"),size: 30,color: Colors.black,),
          ),
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: [
            Items("iskender.jpg", "İskender Kebab", 10),
            Items("beyti.jfif", "Beyti Kebab", 20),
            Items("durum.png", "Et Dürüm", 5),
            Items("kofte.jpg", "Köfte", 15),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.grey,),label: "Live Chat",),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu,color: Colors.grey,),label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.grey,),label: "Favorites"),

        ],
        currentIndex: secilenIndex,
        onTap: (index){
          setState(() { secilenIndex= index; });
        },
      ),
    );
  }
}

class Items extends StatelessWidget {
  String itemImage;
  String itemName;
  int itemPrice;


  Items(this.itemImage, this.itemName, this.itemPrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right:20,top: 20,bottom: 10 ),
      child: Container(
        width: 150,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("lib/Homework_3/Images/${itemImage}")),
            Text(itemName,style: TextStyle(fontFamily:"Tiro",fontSize: 20,color: Colors.black),),
            Text("$itemPrice \$",style:  TextStyle(fontFamily:"Tiro",fontSize: 15,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}

