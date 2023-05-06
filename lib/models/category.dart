class Categorys {
  String thumbnail;
  String name;
  int noOfCourses;

  Categorys({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}


List<Categorys> categoryList = [
  Categorys(
    name: 'Development',
    noOfCourses: 55,
    thumbnail: 'assets/icons/laptop.jpg',
  ),
  Categorys(
    name: 'Accounting',
    noOfCourses: 20,
    thumbnail: 'assets/icons/accounting.jpg',
  ),
  Categorys(
    name: 'Photography',
    noOfCourses: 16,
    thumbnail: 'assets/icons/photography.jpg',
  ),
  Categorys(
    name: 'Product Design',
    noOfCourses: 25,
    thumbnail: 'assets/icons/design.jpg',
  ),
];
