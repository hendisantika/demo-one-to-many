package com.hendisantika.demoonetomany;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoOneToManyApplication{

	private static final Logger log = LoggerFactory.getLogger(DemoOneToManyApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(DemoOneToManyApplication.class, args);
	}

//    @Bean
//    public CommandLineRunner demo(EmployeeRepository repository) {
//        return (args) -> {
//            // save Employees
////            repository.save(new Employee("hendisantika@konohagakure.com", "Hendi Santika", "hendi", new Address("Konohagakure"), new Department("Jounin")));
//            repository.save(new Employee("hendisantika@konohagakure.com", "Hendi Santika", "hendi", new Address("Konohagakure"), new Department("Jounin")));
//        };
//    }

}
