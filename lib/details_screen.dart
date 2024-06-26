import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  final String brandName,productImages;
  final int productPrice;
  const DetailsScreen({required this.brandName,required this.productImages,required this.productPrice,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Details Of Watches',style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xFF4C53A5),
      ),
      backgroundColor: const Color(0xFF4C53A5),
      body: Column(
        children: [
          Image(
              height: 500,
              width: 500,
              image: NetworkImage(productImages)),
         Row(
           children: [
             const Text('Brand Name :',style: TextStyle(
                 fontWeight: FontWeight.w500,fontSize: 25,color: Colors.white
             ),),
             const SizedBox(width: 20,),
             Text(brandName,style: const TextStyle(
                 fontWeight: FontWeight.w500,fontSize: 25,color: Colors.white
             ),),
           ],
         ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const Text('Price :',style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 25,color: Colors.white
              ),),
              const SizedBox(width: 20,),
              Text(r'$'+productPrice.toString(),style: const TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 25,color: Colors.white
              ),),
            ],
          )

          ],
      ),
    );
  }
}
