package com.FinalProject.FinalProject.Models;

import org.springframework.data.repository.CrudRepository;

import javax.persistence.Query;
import java.util.List;

public interface InventoryRepo extends CrudRepository<Inventory, String> {





    /*    Object findByName(String freeText); //created method for search*/
}
