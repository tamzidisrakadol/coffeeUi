class Coffee {
  String imgUrl;
  String coffeeName;
  String coffeAddi;
  String price;

  Coffee(this.imgUrl, this.coffeeName, this.coffeAddi, this.price);

  static List<Coffee> generateCoffeelist(){
    return[
      Coffee('assets/images/latte1.jpg', 'Mocha Latte','with oat milk', "3.14"),
      Coffee('assets/images/latte2.jpg', 'Vanilla Latte','with chocolate', "4.95"),
      Coffee('assets/images/latte1.jpg', 'Caramel Latte','with coffee powder',"2.56"),
      Coffee('assets/images/latte2.jpg', 'Hazelnut Latte','with oat milk',"4.45"),
      Coffee('assets/images/latte1.jpg', 'Cinnamon Latte','with oat milk',"5.33"),
    ];
  }
}
