void main() {
  int n = 325;
  print("ORIGINAL NUMBER : ${n}");

  int ans = reverseno(n);
  print("REVERSE OF THE ORIGINAL NUMBER : ${ans}");
}

int reverseno(int n) {
  int remainder, reverse = 0;
  while (n > 0) {
    remainder = n % 10;
    reverse = (reverse * 10) + remainder;
    n = n ~/ 10;
  }
  return (reverse);
}
