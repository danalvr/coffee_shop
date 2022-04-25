import 'package:coffee_shop/model/nonCoffeeModel.dart';
import 'package:coffee_shop/view/pages/detail_noncoffee_screen.dart';
import 'package:flutter/material.dart';

class NonCoffeeMenuItemCard extends StatelessWidget {
  final int index;

  NonCoffeeMenuItemCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsetsDirectional.fromSTEB(30, 0, 20, 25),
        child: AspectRatio(
          aspectRatio: 3 / 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[900]
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  index: index
                              )));
                    },
                    child: Row(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1 / 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              menu[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        AspectRatio(
                          aspectRatio: 4 / 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                menu[index].name,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),

                              ),
                              Text(
                                menu[index].shortDesc,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff919293),
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Rp. " + menu[index].price.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: Container(
                //     height: 80,
                //     width: 80,
                //     decoration: BoxDecoration(
                //         color: Color(0xffd17842),
                //         borderRadius:
                //         BorderRadius.circular(70)),
                //     child: Icon(
                //       Icons.add,
                //       color: Colors.white,
                //       size: 36,
                //     ),
                //   ),
                // )
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffd17842),
                        borderRadius:
                        BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailPage(
                            index: index,
                          );
                        }));
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ))
              ],
            ),
          ),
        ),
      );
  }
}
