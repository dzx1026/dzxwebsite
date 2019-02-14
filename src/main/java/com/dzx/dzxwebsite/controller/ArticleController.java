package com.dzx.dzxwebsite.controller;

import com.dzx.dzxwebsite.entity.ArticleEntity;
import com.dzx.dzxwebsite.jpa.ArticleJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleJPA articleJPA;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public List<ArticleEntity> list(){
        return articleJPA.findAll();
    }


}
