package com.hendisantika.demoonetomany.repository;

import com.hendisantika.demoonetomany.domain.Department;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by IntelliJ IDEA.
 * Project : demo-one-to-many
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 21/11/17
 * Time: 05.42
 * To change this template use File | Settings | File Templates.
 */
public interface DepartmentRepository extends CrudRepository<Department, Long> {
}
