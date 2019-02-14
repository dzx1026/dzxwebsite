package com.dzx.dzxwebsite.jpa;

import com.dzx.dzxwebsite.entity.ArticleEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.io.Serializable;
// UserJPA继承了JpaRepository接口（SpringDataJPA提供的简单数据操作接口）、JpaSpecificationExecutor（SpringDataJPA提供的复杂查询接口）、Serializable（序列化接口）
public interface ArticleJPA extends JpaRepository<ArticleEntity,Long>,JpaSpecificationExecutor<ArticleEntity>,Serializable{  //接口支持多继承

}
