class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  final n1 = _toNumber(l1!);
  final n2 = _toNumber(l2!);
  return _toLinkedList(n1 + n2);
}

BigInt _toNumber(ListNode ln) {
  var str = '${ln.val}';
  while (ln.next != null) {
    str += '${ln.next!.val}';
    ln = ln.next!;
  }
  str = str.split('').reversed.join('');

  return BigInt.parse(str);
}

ListNode _toLinkedList(BigInt n) {
  ListNode head = ListNode((n % BigInt.from(10)).toInt());
  n = n ~/ BigInt.from(10);
  ListNode currentNode = head;
  while (n > BigInt.from(10)) {
    currentNode.next = ListNode((n % BigInt.from(10)).toInt());
    currentNode = currentNode.next!;
    n = n ~/ BigInt.from(10);
  }
  return head;
}

void main() {
  String str = '249';
  str = str.split('').reversed.join('');
  print(str);
}
