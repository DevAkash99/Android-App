import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{

  createState(){
    return HomeStateKeeper();
  }
}

class HomeStateKeeper extends State<Home>{
Widget build(context){
  return MaterialApp(
    home: Scaffold(
      body: Column(
        children: <Widget>[
          topSection,
          middleSection,
          bottomSection,
        ],
      ),
    ),
  );
}
}


Widget get topSection => Row(
       mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(child:
        Align(alignment: Alignment.topLeft,
        child:CircularProfileAvatar(
                    'https://i.pinimg.com/236x/26/b1/e7/26b1e7b1e40f532a03b4b42d5adb3fa1.jpg',
                    
                    initialsText:Text("Me",style: TextStyle(fontSize:40,color:Colors.white),),
                    showInitialTextAbovePicture:true,
                    borderColor: Colors.purpleAccent,
                    borderWidth: 0.9,
                    elevation: 2,
                    radius: 40,
                    onTap: (){
                      print('My Profile');
                    },
                  ),),margin: EdgeInsets.only(left:0,top:50,bottom:2,right:3)
      ),

        Container(
         child:Text('App name',style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),margin: EdgeInsets.only(left:210,top:50,bottom:2,right:0)
      ),
        Container(child:
        Align(alignment: Alignment.topLeft,
        child:CircularProfileAvatar(
                    '',
                    child: FlutterLogo(),
                    borderColor: Colors.purpleAccent,
                    borderWidth: 1.5,
                    elevation: 2,
                    radius: 30,
                    
                  ),),margin: EdgeInsets.only(left:0,top:50,bottom:2,right:3)
      ),
    ]
  );

  
Widget get middleSection => Expanded(
  child: Row(
    
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        actionsToolbar,
    videoDescription,
  
    
  ]));

  Widget get videoDescription =>  Expanded(child:Container(
  child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
        child: Text('User Name'),
        height: 15.0,  margin: EdgeInsets.only(left:0,top:0,bottom:2,right:3)),
        Container(child:Text('User slogan/summery/Bio'),height: 15.0,  margin: EdgeInsets.only(left:0,top:0,bottom:1,right:3)),
        Container(child:Text('#Likes    #Comments   #views'),height: 15.0,  margin: EdgeInsets.only(left:0,top:0,bottom:1,right:3)),
        Container(child:FlatButton(onPressed: null, child:Text("+Follow")),margin:EdgeInsets.only(left:0,top:0,bottom:0,right:3)),
        Container(margin:EdgeInsets.only(left:0,top:0,bottom:0,right:0),child: Row(mainAxisAlignment: MainAxisAlignment.end,children: <Widget>[ Container(
          child: FlatButton(child: const Icon(Icons.camera_enhance,color: Colors.pink,size:60.0 ,),
                 onPressed: () => print('Create video'),
          ),
      ),],),)
    ],
    
    ),
    
    ),
  

);

 Widget get actionsToolbar => Container(
      child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[ Container(
             child: CircularProfileAvatar(
                    'http://images.catchnews.com/upload/2020/05/15/carryminati_191158_730x419-m.jpg',
                    
                    borderColor: Colors.blueGrey,
                    borderWidth: 1.5,
                    elevation: 2,
                    radius: 40,
                    onTap: (){
                      print('User Profile');
                    },
                    
                  ),
              width: 60, height: 140,margin: EdgeInsets.only(left:10,top:0,bottom:40,right:20))]),
          );

 Widget get bottomSection => Row(
       mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          width:130,
          child: TextField(
              enabled: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(hintText: "Type Your Comment")
          )
      ),
      Container(
        width: 100,
          child: FlatButton(
                 child: const Icon(Icons.send),
                
                 onPressed: () => print('send message'),
          )
      ),
        Container(
          width: 100,
          child: FlatButton(
                 child: const Icon(Icons.favorite,color: Colors.pink,size:42.0 ,),
                 onPressed: () => print('Like'),
          )
      ),
        Container(
          child: FlatButton(
                 child: const Icon(Icons.share, color:Colors.green,size: 30.0,),
                 onPressed: () => print('Share video'),
          )
      ),
    ]
  );
