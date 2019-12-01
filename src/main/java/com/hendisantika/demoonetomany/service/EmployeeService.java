package com.hendisantika.demoonetomany.service;

import com.hendisantika.demoonetomany.domain.Department;
import com.hendisantika.demoonetomany.domain.Employee;
import com.hendisantika.demoonetomany.repository.DepartmentRepository;
import com.hendisantika.demoonetomany.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * Created by IntelliJ IDEA.
 * Project : demo-one-to-many
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 21/11/17
 * Time: 05.43
 * To change this template use File | Settings | File Templates.
 */

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private DepartmentRepository departmentRepository;

    public Object list() {
        return employeeRepository.findAll();
    }

    public Employee save(Employee employee) {
        employee.getAddress().setEmployee(employee);
        Optional<Department> department = departmentRepository.findById(employee.getDepartment().getId());
        employee.setDepartment(department.get());
        return employeeRepository.save(employee);
    }

    public Employee get(long id) {
        return employeeRepository.findById(id);
    }

    public Employee update(Employee employee) {
        Employee old = employeeRepository.findById(employee.getId());
        old.setName(employee.getName());
        old.setEmail(employee.getEmail());
        old.setPassword(employee.getPassword());
        old.getAddress().setAddress(employee.getAddress().getAddress());
        employee = employeeRepository.save(old);
        return employee;
    }

    public void delete(long id) {
        employeeRepository.deleteById(id);
    }

    public List<Employee> list(long departmentId) {
        return employeeRepository.findByDepartmentId(departmentId);
    }
}
