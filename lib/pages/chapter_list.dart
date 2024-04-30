import 'package:e_learning/model/chapre_State.dart';
import 'package:e_learning/model/chapter_model.dart';
import 'package:e_learning/pages/subjects.dart';
import 'package:flutter/material.dart';

class ChapterList extends StatelessWidget {
  const ChapterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 10,
        
        
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 150),
            child: Row(children: [
              Card(
                elevation: 1,
                child:  
                   GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Subjects()));
                    },
                    
                    child: Icon(Icons.arrow_back,size: 30,)),


              ),
                        Container(
                          margin: EdgeInsets.only(left: 120),

                          
                          child: Center(child: Text('subjects',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)))


            ],),
          )
          
        ],
        
        
      
      
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 20,left: 20,right:70),
                                            child: TextField(
                                                                            
                                                     decoration: InputDecoration(
                                              focusColor: Colors.grey,
                                             border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                                                  
                                                                                )
                                                              
                                                                              ),
                                                              
                                                              
                                                                            
                                                                              prefixIcon: Icon(Icons.search),
                                                                              hintText: 'search for  subjects'
                                                                            ),
                                                                          ),
                                          ),
                                        ),
                        
                       
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10,top: 20),
                    width: 50,
                    height: 50,
          
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))
        
                    ),
                    child: Icon(Icons.menu,color: Colors.white,),
                  )
              
        
                ],
              ),
              Column(
                children: [
                  buldChapter(context, 0),
                    buldChapter(context, 1),
                      buldChapter(context, 2),
                        buldChapter(context, 3),
                          buldChapter(context, 4),
                            buldChapter(context, 5),
                              buldChapter(context, 6),
        
        
        
        
        
        
        
                ],
               
                  
                
              )
              
                
               ],
          ),
        ),
      ),
     
    );
  }
}


Widget buldChapter(BuildContext context,int index){
  final ChapterModel chaptr=chapterList[index];
  return Container(

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
        
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20)
                
              ),
              child: Center(child: Text(chaptr.image,style: TextStyle(fontSize: 20,color: Colors.blue),)),
            ),
          ),
          title: Text(chaptr.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          subtitle: Row(
            children: [
              Text(chaptr.subtitle),
              SizedBox(width: 30,),
              Text(chaptr.num)
            ],
          ),
          trailing: Icon(Icons.lock),
        
        
        
        ),
      ),
    ),
    
  );
}