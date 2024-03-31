class Transaction{
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(
    this.id,
    this.to,
    this.amount,
    this.date,
    this.description
  );
}

final List<Transaction> transactions = [
  Transaction(
    1,
    'Paket 1',
    '5.000',
    'Disc',
    '1.000'
  ),
  Transaction(
    2,
    'Paket 2',
    '10.000',
    'Disc',
    '1.000'
  ),
  Transaction(
    3,
    'Paket 3',
    '15.000',
    'Disc',
    '1.000'
  ),
  Transaction(
    4,
    'Paket 4',
    '30.000',
    'Disc',
    '1.000'
  ),
  Transaction(
    5,
    'Paket 5',
    '50.000',
    'Disc',
    '1.000'
  ),
  Transaction(
    6,
    'Paket 6',
    '100.000',
    'Disc',
    '1.000'
  ),

    
];

