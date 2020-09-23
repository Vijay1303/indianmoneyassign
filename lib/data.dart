import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1

  sliderModel.setDesc("My taxi cabs provides a user friendly platform for the drivers to make their Trips easy");
  sliderModel.setTitle("MyTaxiCab");
  sliderModel.setImageAssetPath("assets/taxi1.png");
  slides.add(sliderModel);



  sliderModel = new SliderModel();

  //2

  sliderModel.setDesc("A one-stop service where customer can enhance the best cab services ever with all new features for a new decade. Our drivers are well mannered and well behaved and very professional when it comes to passengers.");
  sliderModel.setTitle("IndianTaxi");
  sliderModel.setImageAssetPath("assets/taxi2.png");
  slides.add(sliderModel);


  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("My taxi cab is an Indian startup organization located In Bangalore, The best platform for Indian cab Industry where drivers are the owners and earn more as no third party is involved, the first-ever Indian metered cab");
  sliderModel.setTitle("Welcome to Mytaxicab.");
  sliderModel.setImageAssetPath("assets/taxi3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

//4
  sliderModel.setDesc("My taxi cab is an Indian startup organization located In Bangalore, The best platform for Indian cab Industry where drivers are the owners and earn more as no third party is involved, the first-ever Indian metered cab");
  sliderModel.setTitle("Welcome to Mytaxicab.");
  sliderModel.setImageAssetPath("assets/taxi4.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}