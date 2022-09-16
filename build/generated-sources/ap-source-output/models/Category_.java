package models;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import models.Item;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-04-24T23:39:56")
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile ListAttribute<Category, Item> itemList;
    public static volatile SingularAttribute<Category, String> categoryName;
    public static volatile SingularAttribute<Category, Integer> categoryId;

}