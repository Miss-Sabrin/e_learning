import 'package:e_learning/model/course.sata.dart';
import 'package:e_learning/model/course_model.dart';
import 'package:e_learning/pages/subjects.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)
                    
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/background.jpg'),
                        fit: BoxFit.cover
                        ),
                        
                      

                    ),
                    child:  
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Row(
                          
                          
                          children: [
                            
                            Column(
                              children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.arrow_back,color: Colors.white,),
                                    ),

                                     Text('find your courses',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    
                    
             
                 
                
                ],
              ),
               Container(
                margin: EdgeInsets.only(top: 130,left: 30,right: 30),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(

                ),
                

                
                    child: 
                    Card(
                      elevation: 2,
                      
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10,left: 20,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Especaillay for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Text('    Two now sections and \n    manay topics',style: TextStyle(color: Colors.grey,),),
                              SizedBox(height: 30,),

                            
                                  
                                        Row(
                                    children: [
                                       ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue.shade100
                                          
                                        ),
                                      
                                        
                                        
                                        child: Text('watch now',style: TextStyle(color: Colors.blue),), 
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Subjects()));
                                        
                                      }),

                                     
                                    ],
                                  ),

                                  
                                

                                  
                                

                          
                          
                            ],
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50,bottom: 10),
                            child: Image.asset('images/confirm.jpg',height: 100,),
                          ),

                        

                    ],),)
                  )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                     Text('Topics',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),


                  ],
                ),
                Column(
                  children: [
                     SizedBox(
                      height: 350,
                       child: Expanded(
                                           child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 8,
                          childAspectRatio: 100/80
                          
                        ),
                        itemCount: 4,
                        
                        
                        itemBuilder: (BuildContext context, int index) {
                          return builedCourse(context, index) ;
                        },
                                           ),
                                         ),
                     ),


                  ],
                )
               
                 
                  
               

              ],
            ),
          ),
          
       
        ],
      ),
      
    );
  }
}


Widget builedCourse(BuildContext context,int index){
  Courses cours=coursData[index];

  return 
  Container(
    height: 100,
      child: Card(
        color: Colors.white,
        
      elevation: 1,
      child:
        
         Column(
            children: [
              Image.asset(cours.image,height: 70,width: 100,),
              Text(cours.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            ],
          ),
          
        
     
      


    ),
  );
}





