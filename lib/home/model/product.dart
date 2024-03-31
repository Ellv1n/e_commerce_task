import '../../common/constants/app_images.dart';

class Product {
  final String imagePath;
  final String categoryName;
  final String productName;
  final String star;
  final String price;

   Product(
      {required this.imagePath,
      required this.categoryName,
      required this.productName,
      required this.star,
      required this.price});

  static  List<Product> products = [
    Product(
        imagePath: AppImages.imageOne,
        categoryName: 'Hoodie',
        productName: 'Erigo Hoodie Kagoshima Dark Oak Unisex',
        star: '4.8',
        price: '\$17.00'),
    Product(
        imagePath: AppImages.imageOne,
        categoryName: 'T-Shirt',
        productName: 'Erigo T-Shirt Kagoshima Dark Oak Unisex',
        star: '4.7',
        price: '\$55.00'),
    Product(
        imagePath: AppImages.imageOne,
        categoryName: 'Pants',
        productName: 'Erigo Pants Kagoshima Dark Oak Unisex',
        star: '4.8',
        price: '\$23.00'),
    Product(
        imagePath: AppImages.imageOne,
        categoryName: 'Jacket',
        productName: 'Erigo Jacket Kagoshima Dark Oak Unisex',
        star: '4.7',
        price: '\$48.00')
  ];
}
