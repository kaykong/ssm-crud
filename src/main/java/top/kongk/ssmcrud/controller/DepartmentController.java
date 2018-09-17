package top.kongk.ssmcrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import top.kongk.ssmcrud.bean.Department;
import top.kongk.ssmcrud.service.DepartmentService;

import java.util.List;

@Controller
public class DepartmentController {

    @Autowired
    DepartmentService departmentService;

    @RequestMapping(value = "/depts", method = RequestMethod.GET)
    @ResponseBody
    public List<Department> getDepts() {
        return departmentService.getDepts();
    }


}
