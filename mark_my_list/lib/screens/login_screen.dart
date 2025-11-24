import 'package:flutter/material.dart';

class LoginScreen
    extends
        StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<
    LoginScreen
  >
  createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends
        State<
          LoginScreen
        > {
  bool
  isChecked =
      false;

 final TextEditingController textController = TextEditingController();



  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }


  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    final double
    keyboardHeight = MediaQuery.of(
      context,
    ).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/loginbgimage.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(
                0.8,
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: keyboardHeight,
            child: _bottomCard(),
          ),
        ],
      ),
    );
  }

  Widget
  _bottomCard() {
    return Card(
        elevation: 8,

        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.only(topLeft: Radius.circular(16), topRight:Radius.circular(16))
        ),

        child:Padding(
          padding: EdgeInsets.all(8),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height:4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children:[
                  Image.asset('assets/images/loginlogo.png',height:43.99, width:58.13),

                  SizedBox(width:1),

                  Image.asset('assets/images/logintext.png'),

                ],
              ),

              SizedBox(height:8),

              Padding(
                padding: const EdgeInsets.only(top:9, left:16, right:16, bottom:9),
                child: TextField(
                  controller: textController,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  onChanged: (value){
                    setState(() {

                    });
                  },

                  decoration:InputDecoration(
                    counterText:'',

                    hintText: "Enter Mobile no.",

                    prefixIcon: Padding(padding: EdgeInsets.all(9),
                      child:Image.asset('assets/images/india_flag.png', height:20, width:20),
                    
                    
                    ),

                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(4)
                    )


                  )
                  
                  
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Checkbox(
                    value:isChecked,
                    onChanged:(bool?value){
                      setState((){
                        isChecked=value!;
                      });
                    }
                  ),

                  SizedBox(width:4),

                  Row(
                    children: [
                      Text("Agree ", style:TextStyle(fontSize:14, fontFamily:"DM Sans", fontWeight: FontWeight.w500, height:1.4 )),

                      Text("Markmyseat ", style:TextStyle(fontSize:14, fontFamily:"DM Sans", fontWeight: FontWeight.w600, height:1.4 )),

                      Text("terms and conditions", style:TextStyle(fontSize:14, fontFamily:"DM Sans", fontWeight: FontWeight.w500, height:1.4 )),

                    ],
                    
                  ),



                ],

              ),

              SizedBox(height:8),

              Container(
                width:double.infinity,
                height:43,
                child: ElevatedButton(
                  onPressed: isChecked && textController.text.length==10?(){
                
                  }:null,
                
                  style:ElevatedButton.styleFrom(
                    elevation:0,
                    backgroundColor: (isChecked && textController.text.length==10)? Color(0xffCD25FF): Color(0xFFE7E7E7),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                
                  ),
                   
                  
                
                  child:Text('Send OTP', style:TextStyle(fontSize:16, fontFamily:"DM Sans", fontWeight:FontWeight.w600, height:1.2,
                    color:(isChecked && textController.text.length==10)? Colors.white:Colors.black
                  
                  ))
                ),
              ),

              SizedBox(height:34),


            ]
          )
          
          )
      );
      
    
    
      
    
  }
}