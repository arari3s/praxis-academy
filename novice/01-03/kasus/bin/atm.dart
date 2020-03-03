import 'dart:io';

class Deposit extends ATMMachine {
  static double deposit;
  void setDeposit(double d) {
    deposit = d;
  }

  static double getDeposit() {
    return deposit;
  }
}

class WithDraw extends ATMMachine {
  static double withDraw = 0;
  void setWithdraw(double w) {
    withDraw = w;
  }

  static double getWithdraw() {
    return withDraw;
  }
}

class BalanceInquiry extends ATMMachine {
  static double balance = 0;
  void setBalance(double b) {
    balance = b;
  }

  static double getBalance() {
    return balance;
  }
}

class ATMMachine {
  static void checkBalance() {
    print("\tYour current balance is" + BalanceInquiry.getBalance().toString());
  }

  static void withDrawMoney() {
    if (BalanceInquiry.getBalance == 0) {
      print("\tYour current balance is Zero.");
      print("\tYou cannot withdraw!");
      print("\tYou need to deposit money first.");
    } else if (BalanceInquiry.balance <= 500) {
      print("\tYou do not have sufficient money to withdraw");
      print("\tChecked your balance to see your money in the bank.");
    } else if (WithDraw.withDraw > BalanceInquiry.balance) {
      print("\tThe amount you withdraw is greater than to your balance");
      print("\tPlease check the amount you entered");
    } else {
      BalanceInquiry.balance = BalanceInquiry.balance - WithDraw.withDraw;
      print("\n\tYou withdraw ther amount of Php " +
          WithDraw.withDraw.toString());
    }
  }

  static void depositMoney() {
    print("\tYou deposited the anount of " + Deposit.getDeposit().toString());
  }
}

void main() {
  int select = 0;
  int choice = 0;

  print("========================================================");
  print("\tWelcome to this simple ATM machine");
  print("========================================================");

  do {
    try {
      do {
        print("\tPlease select ATM Transactions");
        print("\tPress [1] Deposit");
        print("\tPress [2] Withdraw");
        print("\tPress [3] Balance Inquiry");
        print("\tPress [4] Exit");

        stdout.write("Enter your code : ");
        select = int.parse(stdin.readLineSync());
        print("\n");

        if (select > 4) {
          print("\n\tPlease select correnct tansaction.");
        } else {
          switch (select) {
            case 1:
              stdout.write("Enter the amount of monty to deposit: ");
              Deposit.deposit = double.parse(stdin.readLineSync());
              BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
              ATMMachine.depositMoney();
              break;
            case 2:
              print(
                  "\n\tTo Withdraw, make sure that you have sufficient balance in your account.");
              stdout.write("\tEnter emount of money to withdraw");
              WithDraw.withDraw = double.parse(stdin.readLineSync());
              ATMMachine.withDrawMoney();
              break;
            case 3:
              ATMMachine.checkBalance();
              break;

            default:
              print("\n\tTransaction exited");
              break;
          }
        }
      } while (select > 4);
    } catch (e) {
      print("\tError Input! Please Enter a number only.");
      stdout.write("\tEnter your choice: ");
      select = int.parse(stdin.readLineSync());
    }
  } while (choice <= 1);
  print("\n\tThank you for using this simple ATM Machine.");
}

//cle
