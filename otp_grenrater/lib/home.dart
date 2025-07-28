import 'package:flutter/material.dart';
// import 'package:insta_listview/main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> f=[
    'assets/rr4.jpg',
    'assets/b1.jpg',
    'assets/c1.jpg',
    'assets/g2.jpg',
    'assets/b2.jpg',
    'assets/g3.jpg',
    'assets/rr2.jpg',
    'assets/b3.jpg',
    'assets/g4.jpg',
    'assets/b4.jpg',
    'assets/g5.jpg',
    'assets/b5.jpg',
    'assets/g6.jpg',
    'assets/rr3.jpg',
    'assets/g7.jpg',
    'assets/c2.jpg',
    'assets/g8.jpg',
    'assets/c3.jpg',
    'assets/g9.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        leading: GestureDetector(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Start11()));
          },
          child: Icon(Icons.arrow_back_outlined,color:Colors.white,size: 35,)),
        title: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 30),),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert_outlined,color:Colors.white,size: 35,)
        ],
      ),
      //body
      body:Column(
        //spacing: 4,
         children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10.0,top:20),
                child: Container(
                  width: 110,height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: const Color.fromARGB(255, 193, 23, 23),
                    border: Border.all(color:Colors.white,
                    width:3)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset('assets/Profile.jpg',fit:BoxFit.fill))),
              ),
              Column(
                spacing: 4,
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Jaswanth_2110',style:TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:22.0,top:4),
                    child: Row(
        
                      spacing: 40,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:2.0),
                          child: Text('10',style: TextStyle(color: Colors.white,fontSize: 24,),),
                        ),
                        Text('300',style: TextStyle(color: Colors.white,fontSize: 24,),),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('70',style: TextStyle(color: Colors.white,fontSize: 24,),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:22.0),
                    child: Row(
                      spacing: 24,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:2.0),
                          child: Text('posts',style: TextStyle(color: Colors.white,fontSize: 16,),),
                        ),
                        Text('followers',style: TextStyle(color: Colors.white,fontSize: 16,),),
                        Text('following',style: TextStyle(color: Colors.white,fontSize: 16,),),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:24.0,left:12),
            child: Row(
              children: [
                Container1('Edit Profile'),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Container1('Share Profile'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Container2(Icons.person_add_sharp),
                )
              ],
            ),
          ),
          //div3
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: SizedBox(
              height: 150,
              child: Row(children: [
              Container3(Icons.add,),
              SizedBox(width: 8,),
              Expanded(
                //List View 1
                child: ListView.separated(
                  itemCount: f.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Column(
                    children: [
                      Container(
                        width:80,height: 80,
                        decoration: BoxDecoration(
                          color:Colors.black,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                color:Colors.white,
                width: 1
                          )
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(f[index],fit: BoxFit.fill,)),
                        // child: Center(child: Text(data,style: TextStyle(color: Colors.white),)),
                      ),
                      Text('New',style: TextStyle(color: Colors.white),)
                    ],
                  );
                
                  },
                 separatorBuilder: (context, index) {
                   return SizedBox(width: 8,);
                 },),
              ),
              ],),
            ),
          ),
          //div 4
          Padding(
            padding: const EdgeInsets.only(top:0,left:46),
            child: Row(
              spacing: 100,
              children: [
             Icon(Icons.grid_on_outlined,color: Colors.white,size:35),
             Icon(Icons.ondemand_video_rounded,color: Colors.white30,size: 35,),
             Icon(Icons.person_pin_outlined,color: Colors.white30,size: 35,) 
            ],),
          ),
         Padding(
  padding: const EdgeInsets.only(top: 20),
  child: SizedBox(
    height: 300, // Adjust height based on how many rows you want visible
    child: GridView.builder(
      itemCount: f.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns
        crossAxisSpacing:2,
        mainAxisSpacing:2,
       childAspectRatio: 0.554, 
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: 170,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  f[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        );
      },
    ),
  ),
),


         ],
      )
    );
  }
}
//Container for Edit profile, Share profile
Widget Container1(String data)
{
  return Container(
    width:160,height: 35,
    decoration: BoxDecoration(
      color:Color(0xFF2B3036),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(child: Text(data,style: TextStyle(color: Colors.white),)),
  );
}
//Container for Add profile
Widget Container2(IconData Icon1)
{
  return Container(
    width:30,height: 35,
    decoration: BoxDecoration(
      color:Color(0xFF2B3036),
      borderRadius: BorderRadius.circular(8),
    ),
    child:Icon(Icon1,size: 22,color: Colors.white,)
    // child: Center(child: Text(data,style: TextStyle(color: Colors.white),)),
  );
}
//Container for first favirote in favirotes row
Widget Container3(IconData Icon1)
{
  return Column(
    children: [
      Container(
        width:80,height: 80,
        decoration: BoxDecoration(
          color:Colors.black,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color:Colors.white,
            width: 1
          )
        ),
        child:Icon(Icon1,size: 22,color: Colors.white,)
        // child: Center(child: Text(data,style: TextStyle(color: Colors.white),)),
      ),
      Text('New',style: TextStyle(color: Colors.white),)
    ],
  );
}