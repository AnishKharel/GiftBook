import 'dart:ffi';
import 'dart:math';

class userinfo {
  var gifts = [
    "Books",
    "Earning",
    "Laptop",
    "Flowers",
    "Candy",
    "Lego Sets",
    "Nikes Sneakers",
    "PS4",
    "Xbox 1s",
    "Airpods",
    "Iphone"
  ];
  userinfo() {}
  String getgift() {
    Random random = new Random();
    int randomNumber = random.nextInt(10);
    return gifts[randomNumber];
  }
}
