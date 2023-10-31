import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Colors.grey.shade700,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80,left: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('My Family',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20

                    )),
                    Text('Home'),
                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
                shrinkWrap: true,crossAxisCount: 2,crossAxisSpacing: 2,mainAxisSpacing: 2, children: [
              buildCard(  'images/calendar_591576.png','Calender','march ,wednesday','3 Events'),
              buildCard(  'images/food.png','Groceries','brocali,apple','4 items'),
              buildCard(  'images/placeholder.png','Locations','luci moa going to office',''),
              buildCard(  'images/circus-tent.png','Activity','Rose favorated ',''),
              buildCard(  'images/to-do-list.png','Todo','home work design','4 items'),
              buildCard( 'images/gear.png','Settings','',''),

  ]),
          ),
        ],
      ),
    );
  }

  Card buildCard( String image,  String text,String title,String subtitle) => Card(
      shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(15)
      ),
      color: Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image,width: 50),
            SizedBox(height: 10,),
            Text(text,style: TextStyle(
            fontSize: 20,
          ),
          ),
            SizedBox(
              height: 10,
            ),
            Text(title,style: TextStyle(
              fontSize: 10,
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(subtitle,style: TextStyle(
              fontSize: 10,
            ),
            ),


          ],
        ),
      ));
}
