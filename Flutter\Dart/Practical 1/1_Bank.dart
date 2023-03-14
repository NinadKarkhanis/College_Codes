class bank {
  String name = "";
  int accountno = 0, bankbalance = 0;

  void deposit(int dep) {
    bankbalance += dep;
    print("ACCOUNT HOLDER'S BANK BALANCE AFTER DEPOSITING : ${bankbalance}");
  }

  void withdrawal(int wit) {
    if (bankbalance > wit) {
      if ((bankbalance - wit) <= 5000) {
        print(
            "YOU CAN'T WITHDRAW THE MONEY AS MINIMUM BALANCE OF 5000 IS REQUIRED");
      }

      if (bankbalance > wit) {
        bankbalance = bankbalance - wit;
        print(
            "ACCOUNT HOLDER'S BANK BALANCE AFTER WITHDRAWING : ${bankbalance}");
      }
    } else {
      print("WITHDRAWAL AMOUNT SHOULD BE LESSER THAN YOUR BANK BALANCE");
    }
  }

  void displaydetails() {
    print("ACCOUNT HOLDER'S NAME : ${name}");
    print("ACCOUNT HOLDER'S ACCOUNT NUMBER : ${accountno}");
    print("ACCOUNT HOLDER'S BANK BALANCE : ${bankbalance}");
  }
}

void main() {
  bank obj = bank();
  obj.name = "Ninad Karkhanis";
  obj.accountno = 31011221031;
  obj.bankbalance = 50000;
  obj.deposit(2000);
  obj.withdrawal(48000);
  obj.displaydetails();
}
