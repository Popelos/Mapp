/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapp.controller;

import java.util.List;
import java.util.Optional;
import mapp.entity.Category;
import mapp.service.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @category Hello Java !
 */
@RestController//@RestController = @Controller + @ResponseBody
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryServiceImpl service;

    
    @GetMapping
    public List<Category> getCategories() {
        return service.findAll();
    }

    @GetMapping("/{myvariable}")
    public Category getCategoryById(@PathVariable(value = "myvariable") Integer categoryId) throws Exception {
        Optional<Category> optionalCategory = service.findById(categoryId);
        return optionalCategory.orElseThrow(() -> new Exception("Category not exists with id:" + categoryId));
        //return optionalCategory.get();
    }

    @PostMapping
    public Category createCategory(@RequestBody Category category) {
        return service.create(category);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity deleteCategoryById(@PathVariable(value = "id") Integer categoryId) {
        service.delete(categoryId);
        return ResponseEntity.ok("Category deleted successfully, ID:" + categoryId);
    }

    @PutMapping("/{id}")
    public void updateCategory(@PathVariable(value = "id") Integer categoryId,
            @RequestBody Category newCategoryDetails) throws Exception {
        Optional<Category> optionalCategory = service.findById(categoryId);
        Category categoryToUpdate = optionalCategory.orElseThrow(() -> new Exception("Category not exists with id:" + categoryId));
        
//        categoryToUpdate.setDay(newCategoryDetails.getDay());
        service.edit(newCategoryDetails);
    }
    
//    @GetMapping("/search/{address}")
//    public Category getCategoryByAddress(@PathVariable(value = "address") String address){
//        return service.findCategoryByAddress(address);
//    }

}