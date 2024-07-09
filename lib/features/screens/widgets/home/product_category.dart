import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.red),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 180,
                decoration:  BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/categoryImage.png'),
                  ),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius:
                              BorderRadius.circular(8),
                            ),
                            child: const Text(
                              '78%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(20),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.favorite,color: Colors.red,)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8,),
                    const Text(
                      'Green Nike sports shoe',
                      style: TextStyle(color: Colors.black),
                    ),
                    const Row(
                      children: [
                        Text(
                          'Nike',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 8,),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$300',
                          style: TextStyle(color: Colors.black),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration:  const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(10))),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}