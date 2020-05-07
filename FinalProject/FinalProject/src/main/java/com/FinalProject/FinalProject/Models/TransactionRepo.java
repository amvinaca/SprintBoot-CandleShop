package com.FinalProject.FinalProject.Models;

import org.springframework.data.repository.CrudRepository;

import javax.persistence.Query;
import java.util.List;

public interface TransactionRepo extends CrudRepository<Transaction, String> {


}
