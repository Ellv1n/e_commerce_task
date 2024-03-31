class ProductCategory {
  const ProductCategory({required this.categoryName});
  final String categoryName;

 static const List<ProductCategory> categories = [
    ProductCategory(categoryName: "Clothes"),
    ProductCategory(categoryName: "Shoes"),
    ProductCategory(categoryName: "Bags"),
    ProductCategory(categoryName: "Accessories"),
    ProductCategory(categoryName: "Others"),
    ProductCategory(categoryName: "Clothes"),
    ProductCategory(categoryName: "Shoes"),
    ProductCategory(categoryName: "Bags"),
    ProductCategory(categoryName: "Accessories"),
    ProductCategory(categoryName: "Others"),
  ];
}
