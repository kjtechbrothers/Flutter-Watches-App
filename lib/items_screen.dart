import 'package:flutter/material.dart';
import 'package:kj_watches/details_screen.dart';
class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  List<String> brandName=['Rolex','Patek Philippe','Omega','Tag Heuer', 'Breitling', 'Cartier','Seiko',
  ];
  List<int> productPrice=[900,1300,1500,750,1000,1300,1600];
  List<String> productImages=[
    'https://www.lifestyle-collection.com.pk/wp-content/uploads/2021/06/BTA13314101B1A1-1-650x813.jpg',
    'https://www.lifestyle-collection.com.pk/wp-content/uploads/2021/06/BTEB5510H1-BE79-181E-1-650x813.jpg',
    'https://www.lifestyle-collection.com.pk/wp-content/uploads/2021/06/BTAB0117131B1A1-1-650x813.jpg',
    'https://www.lifestyle-collection.com.pk/wp-content/uploads/2021/06/BTAB0117131C1A1-1-650x813.jpg',
    'https://www.lifestyle-collection.com.pk/wp-content/uploads/2023/04/E7936310-BC27-152E-1-650x813.jpg',
    'https://royalwrist.pk/wp-content/uploads/2024/06/1-5-600x600.jpg',
    'https://royalwrist.pk/wp-content/uploads/2022/08/1-12-600x600.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('WATCHES',style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color(0xFF4C53A5) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: InkWell(

                child: ListView.builder(
                    itemCount: brandName.length,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(
                              brandName: brandName[index],
                              productImages: productImages[index],
                            productPrice: productPrice[index],
                          )));
                        },
                        child: Card(
                          color: const Color(0xFF4C53A5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image(
                                        height: 150,
                                        width: 150,
                                        image: NetworkImage(productImages[index].toString())),
                                    const SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(brandName[index].toString(),style: const TextStyle(
                                            fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white
                                        ),),
                                        const SizedBox(height: 50,),
                                        Text(r'$'+productPrice[index].toString(),style: const TextStyle(
                                            fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white
                                        ),),

                                      ],
                                    ),

                                  ],

                                )
                              ],
                            ),
                          ),
                        ),
                      );

                }),
              ),
            )
          ],
        ),
      )
    );
  }
}
