package models;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import models.Item;
import models.Role;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-04-24T23:39:56")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> firstName;
    public static volatile SingularAttribute<User, String> lastName;
    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Role> role;
    public static volatile SingularAttribute<User, Boolean> active;
    public static volatile ListAttribute<User, Item> itemList;
    public static volatile SingularAttribute<User, String> uuid;
    public static volatile SingularAttribute<User, String> email;

}