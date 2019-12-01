package com.hendisantika.demoonetomany.service;

import com.hendisantika.demoonetomany.domain.Department;
import com.hendisantika.demoonetomany.repository.DepartmentRepository;
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
 * Time: 05.44
 * To change this template use File | Settings | File Templates.
 */

@Service
public class DepartmentService {
    @Autowired
    private DepartmentRepository departmentRepository;

    public List<Department> list() {
        return departmentRepository.findAll();
    }


    public Object delete() {
        return null;
    }

    public Department update(Department department) {
        return null;
    }

    public Department save(Department department) {
        return departmentRepository.save(department);
    }

    public Optional<Department> get(long id) {
        return departmentRepository.findById(id);
    }
}
