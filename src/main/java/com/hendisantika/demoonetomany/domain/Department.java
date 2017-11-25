package com.hendisantika.demoonetomany.domain;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Project : demo-one-to-many
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 21/11/17
 * Time: 05.39
 * To change this template use File | Settings | File Templates.
 */

@Entity
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Temporal(TemporalType.TIMESTAMP)
    protected Date dateCreated =  new Date();

    @Temporal(TemporalType.TIMESTAMP)
    protected Date lastUpdated =  new Date();

    private String name;

    @OneToMany(cascade = CascadeType.ALL,mappedBy = "department", fetch = FetchType.LAZY)
    private List<Employee> employees;

    public Department() {
    }

    public Department(Date dateCreated, Date lastUpdated, String name, List<Employee> employees) {
        this.dateCreated = dateCreated;
        this.lastUpdated = lastUpdated;
        this.name = name;
        this.employees = employees;
    }

    public Department(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }
}
