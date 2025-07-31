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
    item: 'Carrot',
    prize: '₹45/Kg',
    avaible: 'In Stock',
    rating: '4.5',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxG4eEFXDKLTlO4tbbtE_-3La9qJS6KUXCRQ&s',
  ),
  Shop_data(
    item: 'Brinjal',
    prize: '₹14/Kg',
    avaible: 'In Stock',
    rating: '4.2',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFm1i7p1Uzlyca0xJnpdGobbdlBKbwMkuhAw&s',
  ),
  Shop_data(
    item: 'Potato',
    prize: '₹20/Kg',
    avaible: 'Limited',
    rating: '4.0',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs3-CJ95NcYxkohq0H9cGR_FakXft3FhQV7A&s',
  ),
  Shop_data(
    item: 'Green Mirchi',
    prize: '₹75/Kg',
    avaible: 'In Stock',
    rating: '4.3',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMyeLZK21LH7TockU-2GKKRg-kHR2XtRBiaA&s',
  ),
  Shop_data(
    item: 'asparagus',
    prize: '₹10/1-packet',
    avaible: 'Out of Stock',
    rating: '4.1',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqarc8rDJxpbXlbioGZ9Z0Pawy4GBKKDBag&s',
  ),
  Shop_data(
    item: 'Tomato',
    prize: '₹20/Kg',
    avaible: 'In Stock',
    rating: '4.4',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3gZR1BmPjRLbPQZQ7-PKVcPw-lbPg-nRi-Q&s',
  ),
  Shop_data(
    item: 'Premium Wheat',
    prize: '₹32/Kg',
    avaible: 'In Stock',
    rating: '4.6',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqdzxYtKQGRiJJgDlQgD6DK7HrLiQz56wtNw&s',
  ),
//   Shop_data(
//     item: 'Gaming Mouse',
//     prize: '₹1,450',
//     avaible: 'Limited',
//     rating: '4.5',
//     img: 'https://m.media-amazon.com/images/I/61LtuGzXeaL._SX679_.jpg',
//   ),
//   Shop_data(
//     item: 'LED Monitor',
//     prize: '₹9,999',
//     avaible: 'In Stock',
//     rating: '4.7',
//     img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqECczezQcg7WrZGT6XaDzLoysa5wyOcUsDA&s',
//   ),
//   Shop_data(
//     item: 'Power Bank',
//     prize: '₹1,199',
//     avaible: 'Out of Stock',
//     rating: '3.9',
//     img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4CcIz5DpCpNlUxLNVqaYD1YPpUUWC5eTfSg&s',
//   ),
];
