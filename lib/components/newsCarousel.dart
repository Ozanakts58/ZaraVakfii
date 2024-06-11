import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled27/constants/values.dart';
import 'package:untitled27/responsive.dart';

class NewsCarousel extends StatelessWidget {
   NewsCarousel({Key? key}) : super(key: key);
  final StaticValues staticValues = StaticValues();

  @override
  Widget build(BuildContext context) {
    ///buradaki hata
    return Column(
      children: [
        ResponsiveWidget(mobile: CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
          ),
          items: staticValues.news.map((news) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin:  const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(

                    children: [
                      /*ResponsiveWidget(mobile: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,

                          // width: MediaQuery.of(context).size.width,
                        ),
                      ), desktop: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,
                          // width: MediaQuery.of(context).size.width,
                        ),
                      ),),*/
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,
                          width: 500,
                          // width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin:  const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            gradient:  const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xCC000000),
                                Color(0x00000000),
                                Color(0x00000000),
                                Color(0xCC000000),
                              ],
                            ),
                            // image: DecorationImage(
                            //     colorFilter: new ColorFilter.mode(
                            //         Colors.black, BlendMode.dstATop),
                            //     image: NetworkImage(news.image),
                            //     fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding:  const EdgeInsets.all(20),
                            child: Text(
                              news.title,
                              style:  const TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
          desktop:CarouselSlider(
            options: CarouselOptions(
              height: 600.0,
            ),
            items: staticValues.news.map((news) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Stack(

                      children: [
                        /*ResponsiveWidget(mobile: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,

                          // width: MediaQuery.of(context).size.width,
                        ),
                      ), desktop: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 600,
                          width: 1300,
                          // width: MediaQuery.of(context).size.width,
                        ),
                      ),),*/
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(news.image),
                            height: 600,
                            width: 1300,
                            // width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              gradient:  LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xCC000000),
                                  Color(0x00000000),
                                  Color(0x00000000),
                                  Color(0xCC000000),
                                ],
                              ),
                              // image: DecorationImage(
                              //     colorFilter: new ColorFilter.mode(
                              //         Colors.black, BlendMode.dstATop),
                              //     image: NetworkImage(news.image),
                              //     fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                news.title,
                                style: const TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ), ),
        /*CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
          ),
          items: staticValues.news.map((news) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(

                    children: [
                      ResponsiveWidget(mobile: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,

                          // width: MediaQuery.of(context).size.width,
                        ),
                      ), desktop: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,
                          width: 1300,
                          // width: MediaQuery.of(context).size.width,
                        ),
                      ),),
                      /*ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(news.image),
                          height: 250,
                          // width: MediaQuery.of(context).size.width,
                        ),
                      ),*/
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xCC000000),
                                const Color(0x00000000),
                                const Color(0x00000000),
                                const Color(0xCC000000),
                              ],
                            ),
                            // image: DecorationImage(
                            //     colorFilter: new ColorFilter.mode(
                            //         Colors.black, BlendMode.dstATop),
                            //     image: NetworkImage(news.image),
                            //     fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              news.title,
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),*/
      ],
    );
  }
}
