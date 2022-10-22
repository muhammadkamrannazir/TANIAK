import 'package:equatable/equatable.dart';

class Catagory extends Equatable {
  final String name;
  final String imageUrl;
  const Catagory({required this.imageUrl, required this.name});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Catagory> catagories = [
    const Catagory(
        imageUrl:
            'https://media.istockphoto.com/photos/confident-manager-suitable-in-current-circumstances-masculinity-picture-id1282101313?b=1&k=20&m=1282101313&s=170667a&w=0&h=23bIqSQn-Vk6f9ciOTHkx1jo8DGf9bqxke17HWj4eA0=',
        name: "Mens"),
    const Catagory(
        imageUrl:
            'https://s3-eu-west-1.amazonaws.com/emap-nibiru-prod/wp-content/uploads/sites/2/2013/01/08142310/Rare-Rebels-spring-13-3-1024x653.jpg',
        name: "Ladies"),
    const Catagory(
        imageUrl:
            'https://cdn.shopify.com/s/files/1/0486/5094/4664/files/boy_9d7092ba-6f1b-4934-aefc-82001298b8dd.jpg?v=1644495731',
        name: "Kids")
  ];
}
