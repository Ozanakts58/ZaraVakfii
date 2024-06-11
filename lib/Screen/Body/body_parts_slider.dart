


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BodyPartsSlider extends StatefulWidget {
  const BodyPartsSlider({Key? key}) : super(key: key);

  @override
  State<BodyPartsSlider> createState() => _BodyPartsSliderState();
}

class _BodyPartsSliderState extends State<BodyPartsSlider> {
  final urlImages = [/*
    'https://scontent.fsaw2-3.fna.fbcdn.net/v/t39.30808-6/439246693_736845115314366_1836867855229520569_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=K_He2GXABCMQ7kNvgFNC04L&_nc_ht=scontent.fsaw2-3.fna&oh=00_AYAqZg_qkjt9QCHHdyIIgk6J5pd4osOQ0pEDQTF7ezLJ0A&oe=66678DFD',
    'https://scontent.fsaw2-3.fna.fbcdn.net/v/t39.30808-6/438299938_736845295314348_3531102844214222509_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=6DHAj6p_ZwcQ7kNvgFf-qko&_nc_ht=scontent.fsaw2-3.fna&oh=00_AYDPpT6aAkKFIAdW4fT2-xWFrVFzgLvFZ4LRzVTiGsk8kg&oe=66679295',
    'https://scontent.fsaw2-2.fna.fbcdn.net/v/t39.30808-6/436410976_720628040269407_1118398702530632342_n.jpg?stp=cp6_dst-jpg&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=_JkSSlugtHgQ7kNvgFsiOVl&_nc_ht=scontent.fsaw2-2.fna&oh=00_AYDMPfMYvM5uyLb33dscStL0mjTMbA7YRMKqDylo2L3bcA&oe=66679CC5',
    'https://scontent.fsaw2-2.fna.fbcdn.net/v/t39.30808-6/434561014_716494604016084_5381749719750788898_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=usjNy6p6PIoQ7kNvgHQi-mK&_nc_ht=scontent.fsaw2-2.fna&oh=00_AYCMtaAdXKHgbnOuktPGeoW2dZstr27_jZda1sxi2mz1Ig&oe=6667976E',
    'https://scontent.fsaw2-3.fna.fbcdn.net/v/t39.30808-6/434240932_715321234133421_6944283839686068408_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=gcZRHdKtVfoQ7kNvgFiJzw7&_nc_ht=scontent.fsaw2-3.fna&oh=00_AYA_I4mGG8TSz56Uo_9ICYStmffXKIuLgPwBTQiK7WgATw&oe=6667A71B',
  */];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 400,
          //viewportFraction: 1,
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,

          //reverse: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
        ),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        },
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 1),
    color: Colors.grey,
    width: double.infinity,
    child: Image.network(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
}
