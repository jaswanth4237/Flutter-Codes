import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

class Buyer_home extends StatefulWidget {
  const Buyer_home({super.key});

  @override
  State<Buyer_home> createState() => _BuyerState();
}

class _BuyerState extends State<Buyer_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                spacing:8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder:
                            (context) => IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () => Scaffold.of(context).openDrawer(),
                            ),
                      ),
                      Text(
                        'Smart AgriConnect',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 150, 236, 69),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 4),
                              ],
                            ),
                            child: Icon(Icons.shopping_cart_outlined, size: 30),
                          ),
                          Positioned(
                            top: -5,
                            right: -5,
                            child: Container(
                              width: 25,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFDAF27A),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none, // Removes default border
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4,),
                  Row(children: [
                    Text('Vendors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                    SizedBox(width: 216,),
                    Text('See all',style: TextStyle(color: Color(0xFF6A7549,),fontSize: 22 ,fontWeight: FontWeight.bold),)
                  ],),
                  //Vendors_container
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 8,
                      children: [
                         Vendors_container('assets/v1.jpg', "The PDX Farmer",'Farm fresh eggs,\n milk,and more'),
                          Vendors_container('assets/v2.jpg',"Sunrise Soil Co",'Carrots, radishes,\n and beets'),
                      ],
                    ),
                  ),
                  SizedBox(height: 4,),
                   Row(children: [
                    Text('Categories',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                    SizedBox(width: 191,),
                    Text('See all',style: TextStyle(color: Color(0xFF6A7549,),fontSize: 22 ,fontWeight: FontWeight.bold),)
                  ],),
        
                  //Categories contianer
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 8,
                      children: [
                        Categories_container('Produce'),
                        Categories_container('Baked Goods'),
                        Categories_container('Dairy'),
                        Categories_container('Rice'),
                      ],
                    ),
                  ),
                  SizedBox(height: 4,),
                   Row(children: [
                    Text('In Season Produce',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                    SizedBox(width: 110,),
                    Text('See all',style: TextStyle(color: Color(0xFF6A7549,),fontSize: 22 ,fontWeight: FontWeight.bold),)
                  ],),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 12,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Season_container('assets/brinjal.jpg','₹15 Rps','Organic','Brinjal'),
                        Season_container('assets/correct.jpg','₹41 Rps','Organic','Carrot'),
                        Season_container('assets/patato.jpg','₹20 Rps','Organic','Potato'),
                      ],
                    ),
                  ),
                  SizedBox(height: 4,),
                   Row(children: [
                    Text('Market Bestsellers',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                    SizedBox(width: 110,),
                    Text('See all',style: TextStyle(color: Color(0xFF6A7549,),fontSize: 22 ,fontWeight: FontWeight.bold),)
                  ],),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 12,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Season_container('assets/brinjal.jpg','₹15 Rps','Organic','Brinjal'),
                        Season_container('assets/correct.jpg','₹41 Rps','Organic','Carrot'),
                        Season_container('assets/patato.jpg','₹20 Rps','Organic','Potato'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget Vendors_container(String img,String t1,String t2,)
{
  return Container(
      width: 260,
      height: 130,
      decoration: BoxDecoration(
        color:Color(0xFF3D3F2F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        spacing: 4,
        children: [
          Container(
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              border: Border.all(
                // color: c2,
                width: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:12,left:4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(t2, style: TextStyle(color: Colors.white60, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
}
//Categories container
Widget Categories_container(String c1)
{
  return Container(
    width: 120,height: 35,
    decoration: BoxDecoration(
      color:Color.fromARGB(255, 225, 240, 157),
      borderRadius: BorderRadius.circular(30)
    ),
    child: Center(child: Text(c1,style: TextStyle(color: Color(0xFF6A7549),fontWeight: FontWeight.bold,fontSize: 14),)),
  );
}
//Season Produce Container
Widget Season_container(String img,String prize,String organic,String name)
{
  return Container(
    width: 150,height: 192,
   decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20)
   ),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Stack(
      children: [ Container(
        width: 180,height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Image.asset(img),
      ),
      Positioned(
        left: 100,
        top: 50,
        child: Container(
          width: 40,height: 40,
          decoration: BoxDecoration(
            color:Color(0xFFDAF27A), 
            borderRadius: BorderRadius.circular(50)
          ),
          child: Icon(Icons.add,color: Colors.black,size: 35,),
        ),
      )
      ]
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(prize,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20)),
    ),
    Text(organic,style: TextStyle(color: Colors.black54,fontSize: 16),),
     Text(name,style: TextStyle(color: Colors.black54,fontSize: 16),)

    
   ],),
  );
}
