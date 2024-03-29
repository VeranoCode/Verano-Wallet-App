import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final String titleIcon;
  final String titleName;
  final String titleSubName;
  const MyListTitle({Key? key,
required this.titleIcon,
required this.titleName,
required this.titleSubName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 80,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset('icons/$titleIcon.png')
              ),
              SizedBox(width: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titleName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  SizedBox(height: 8,),
                  Text(titleSubName,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600]
                    ),)
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
