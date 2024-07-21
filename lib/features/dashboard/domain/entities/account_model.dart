import 'package:equatable/equatable.dart';

import '../../../../core/shared/constants/_constants.dart';

class AccountModel extends Equatable {
  final String country;
  final String image;
  final String currency;
  final String balance;

  const AccountModel({
    required this.country,
    required this.image,
    required this.currency,
    required this.balance,
  });

  @override
  List<Object> get props => [country, image, currency, balance];
}

final accounts = [
  const AccountModel(
    country: 'USD',
    image: AppSvgAssets.flagUS,
    currency: '\$',
    balance: '200.00',
  ),
  const AccountModel(
    country: 'GHS',
    image: AppSvgAssets.flagGhana,
    currency: '₵',
    balance: '5000.00',
  ),
  const AccountModel(
    country: 'NGN',
    image: AppSvgAssets.flagNigeria,
    currency: '₦',
    balance: '15,000,000.00',
  ),
];
