class Shop_data {
  final String item;
  final String prize;
  final String avaible;
  final String rating;
  final String img;

  const Shop_data({
    required this.item,
    required this.prize,
    required this.avaible,
    required this.rating,
    required this.img,
  });
}

final List<Shop_data> products = [
  Shop_data(
    item: 'Laptop',
    prize: '₹65,000',
    avaible: 'In Stock',
    rating: '4.5',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSusZQvWckUUpbf_0fDhJk6KKETauH36KoYFA&s',
  ),
  Shop_data(
    item: 'Smartphone',
    prize: '₹22,000',
    avaible: 'In Stock',
    rating: '4.2',
    img: 'https://m.media-amazon.com/images/I/81fxjeu8fdL._SX679_.jpg',
  ),
  Shop_data(
    item: 'Bluetooth Speaker',
    prize: '₹2,499',
    avaible: 'Limited',
    rating: '4.0',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaMQPi5uDp5IpiWG1bqMmZBaUWoHfGFz4bzg&s',
  ),
  Shop_data(
    item: 'Smartwatch',
    prize: '₹5,999',
    avaible: 'In Stock',
    rating: '4.3',
    img: 'https://m.media-amazon.com/images/I/61IMRs+o0iL._SX679_.jpg',
  ),
  Shop_data(
    item: 'Wireless Earbuds',
    prize: '₹1,999',
    avaible: 'Out of Stock',
    rating: '4.1',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrT8Ah_dbJL5JPiKKmQKPf44PaPYm69oioWQ&s',
  ),
  Shop_data(
    item: 'Backpack',
    prize: '₹799',
    avaible: 'In Stock',
    rating: '4.4',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI-H89g-jMSDqGqhSiM6tkSK69oXdHSYlNPg&s',
  ),
  Shop_data(
    item: 'Mechanical Keyboard',
    prize: '₹3,200',
    avaible: 'In Stock',
    rating: '4.6',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4k3o9xHXNhHU_8v2ayu9EAqtMlUvUAYE9uA&s',
  ),
  Shop_data(
    item: 'Gaming Mouse',
    prize: '₹1,450',
    avaible: 'Limited',
    rating: '4.5',
    img: 'https://m.media-amazon.com/images/I/61LtuGzXeaL._SX679_.jpg',
  ),
  Shop_data(
    item: 'LED Monitor',
    prize: '₹9,999',
    avaible: 'In Stock',
    rating: '4.7',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqECczezQcg7WrZGT6XaDzLoysa5wyOcUsDA&s',
  ),
  Shop_data(
    item: 'Power Bank',
    prize: '₹1,199',
    avaible: 'Out of Stock',
    rating: '3.9',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4CcIz5DpCpNlUxLNVqaYD1YPpUUWC5eTfSg&s',
  ),
];
