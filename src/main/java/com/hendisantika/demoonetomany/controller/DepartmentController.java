package com.hendisantika.demoonetomany.controller;

import com.hendisantika.demoonetomany.domain.Department;
import com.hendisantika.demoonetomany.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by IntelliJ IDEA.
 * Project : demo-one-to-many
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 21/11/17
 * Time: 05.52
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping(path = "/department")
public class DepartmentController {
    private static final String PATH = "/department";

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping(value = {"", "/list"}, method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("departments", departmentService.list());
        return PATH + "/list";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") long id, Model model) {
        model.addAttribute("department", departmentService.get(id));
        return PATH + "/show";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {
        return PATH + "/create";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute Department department, Model model) {
        department = departmentService.save(department);
        model.addAttribute("department", department);
        return "redirect:" + PATH + "/show/" + department.getId();
    }

    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public String update(@ModelAttribute Department department, Model model) {
        department = departmentService.update(department);
        model.addAttribute("department", department);
        return "redirect:" + PATH + "/show/" + department.getId();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") long id, Model model) {
        model.addAttribute("department", departmentService.delete());
        return PATH;
    }

}
