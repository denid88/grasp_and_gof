/// Формулювання
/// Необхідно розподілити відповідальності між класами так,
/// щоб забезпечити мінімальну пов'язаність.
///
/// Найяскравішим прикладом порушення цього принципу,
/// є циклічна залежність, також прикладом звязування є наслідування всі діти
/// повязані з батьками.
///
class A {
  final int a;
  final B b;

  const A(this.a, this.b);
}

class B {
  final A a;
  const B(this.a);
}