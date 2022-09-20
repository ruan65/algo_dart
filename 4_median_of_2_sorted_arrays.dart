double findMedianSortedArrays(List<int> small, List<int> big) {

  if(small.length > big.length) {
    final tmp = small;
    small = big;
    big = tmp;
  }
  final total = small.length + big.length;
  final isEven = total % 2 == 0;
  final leftPartSize = isEven ? total / 2 : total ~/2 + 1;

  int midSmall = small.length ~/ 2;


  return 0;

}