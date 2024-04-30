import 'package:e_learning/model/subject_model.dart';
import 'package:e_learning/model/subject_state.dart';
import 'package:e_learning/pages/chapter_list.dart';
import 'package:e_learning/pages/home.dart';
import 'package:flutter/material.dart';

class Subjects extends StatelessWidget {
  const Subjects({super.key});

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 100/110,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10
                ),
                itemCount: subjectData.length,
                itemBuilder: (BuildContext context, int index) {
                  
                  return buildSubjects(context, index);
                },
              ),
            ),
        
           
          ],
        ),
      ),
    );
  }
}

Widget buildSubjects(BuildContext context,int index){
   Subjectes sub=subjectData[index];
  return Container(
    
    
    child: Card(
      
      elevation: 2,

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 140,
              
              
              decoration: BoxDecoration(
                
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)
              ),
              child:           Image.asset(sub.image,height: 75,)
            
              ,
            ),
          ),
          SizedBox(height: 5,),
          Text(sub.subjectName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Text(sub.description,style: TextStyle(color: Colors.grey),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade300
              
            ),
              
            
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChapterList()));
            },

           child: Text('Enable',style: TextStyle(color: Colors.white),))


        ],
      ),

      
    ),
  );
}