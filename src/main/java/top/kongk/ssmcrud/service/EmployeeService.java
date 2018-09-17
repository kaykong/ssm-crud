package top.kongk.ssmcrud.service;

import top.kongk.ssmcrud.bean.Employee;
import top.kongk.ssmcrud.bean.Page;

import java.util.List;

public interface EmployeeService {
    //要根据id获取一个员工
    Employee getEmpById(Integer id);

    //删除员工 (单个或多个)
    boolean deleteEmpByEmpIds(List<Integer> list);

    //通过主键和employee对象中不为空的值 来更新 employee
    /*
        * 语法错误: update tb_emp where emp_id = ?
        *
        * 如果employee 的其他值都是null,那么会报语法错误
        * 如果employee 的主键为null,其他值存在,那么返回 0
        * 如果employee 虽然传进了值, 但是行没受到改变, 那么返回 0
        *
        * 总结: 其他值一定要有, 否则就是语法错误.
        *       在主键值有效,且其他值与原数据库中对应的值不同时,会返回被影响的行数
        * */
    boolean updateByPrimaryKeyAndSelective(Employee employee);

    //根据条件 分页查询员工
    Page<Employee> getEmpsBySelectiveWithPage(Employee employee, int currPage, int pageSize);

    //完整的数据, 否则会报异常
    int insertEmp(Employee employee);

    //如果该名字可以用,则返回true
    boolean checkEmpByName(String name);
}
