import 'dart:io';

void main() {
  int select;
  do {
    print('====================================================');
    print('\tWelcome to this simple ATM machine');
    print('====================================================');
    print('');
    print('\tPress select ATM Transactions');
    print('\tPress [1] Deposit');
    print('\tPress [2] Withdraw');
    print('\tPress [3] Balance Inquiry');
    print('\tPress [4] Exit');
    print('');
    print('\tWhat would you like to do?');
    int select = int.parse(stdin.readLineSync());
    switch (select) {
      case 1:
        deposit();
        break;
      case 2:
        withdraw();
        break;
      case 3:
        inquiry();
        break;

      default:
        print('\t--Transaction exited--');
        print('');
        break;
    }
  } while (select > 4);
}

void deposit() {
  double depo = 0;
  print('\n\tyour deposit is Rp.100.000 ');
  print('');
  main();
}

void withdraw() {
  double withd = 0;
  print('\n\tYou take will Rp.100.000');
  print('');
  main();
}

void inquiry() {
  double inkw = 0;
  print('\n\tYour current balance is Rp.200.000');
  print('');
  main();
}
