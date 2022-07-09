package com.codingdojo.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	// Injecting the Repository
	private final ExpenseRepository expenseRepository;
	
	// Constructor
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
		
	// Find all Expenses from repo 
	public List<Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	
	// Find one Expense from repo 
	public Expense findExpense(Long id) {
		Optional<Expense> optExpense = expenseRepository.findById(id);
		if(optExpense.isPresent()) {
			return optExpense.get();
		}else {
			return null;
		}
	}
	
	// find all expenses from a user 
	public List<Expense> findUserExpenses(Long id) {
		return expenseRepository.findByUser_id(id);
	}

	// Create an Expense from repo 
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	
	// Delete an Expense from repo 
	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}
	
	// Update an Expense from repo
	public Expense updateExpense(Expense e) {
		return expenseRepository.save(e);
	}

}
