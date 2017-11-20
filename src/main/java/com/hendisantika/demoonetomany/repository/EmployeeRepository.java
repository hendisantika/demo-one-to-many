package com.hendisantika.demoonetomany.repository;

import com.hendisantika.demoonetomany.domain.Employee;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Project : demo-one-to-many
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 21/11/17
 * Time: 05.41
 * To change this template use File | Settings | File Templates.
 */
public interface EmployeeRepository extends CrudRepository<Employee, Long>{
    List<Employee> findAll();

    Employee findById(long id);

    List<Employee> findByDepartmentId(Long departmentId);
}
