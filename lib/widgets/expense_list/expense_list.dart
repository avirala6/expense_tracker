import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget{

  const ExpenseList({required this.expenses,super.key,required this.onDismiss});

  final List<Expense> expenses;
  final void Function(Expense expense) onDismiss;

  @override
  Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context,index){
          return Dismissible(
            key: ValueKey(expenses[index]),
            background: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error.withOpacity(0.2),
                //borderRadius: BorderRadius.circular(10),
              ),
            ),
            onDismissed: (direction){
              onDismiss(expenses[index]);
            },
            child: ExpenseItem(expenses[index]),
            );
        }
        );
  }

}