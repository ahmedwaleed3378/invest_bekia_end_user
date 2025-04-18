class PlanModel {
  final String cash;
  final String cashScrap;
  final String moneyBackAfter;
  final String period;
  final bool isTopPlan;
  final String planName;
  bool isYourPlan;
  final String image;

  PlanModel({
    required this.cash,
    required this.isYourPlan,
    required this.cashScrap,
    required this.planName,
    required this.image,
    required this.moneyBackAfter,
    required this.period,
    this.isTopPlan = false,
  });
}
