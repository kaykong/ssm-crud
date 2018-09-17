package top.kongk.ssmcrud.dao;

import org.apache.ibatis.annotations.Param;
import top.kongk.ssmcrud.bean.Employee;

import java.util.List;
import java.util.Map;

public interface EmployeeDao {

    //通过主键查询 employee, 需要department
    Employee selectByPrimaryKey(Integer empId);

    //通过名字精确查找 employee 的数量, limit 1 (返回该名字对应的emp_id 或者 null)
    Integer countByName(String name);

    //根据employee中的条件,查询符合条件的个数 原:employeeMapper.selectByMapWithoutPage(map));
    int countBySelective(Employee employee);

    //无条件分页查询,返回的是某一页的list (首页需要)
    List<Employee> selectAllWithPage(@Param("start") Integer start, @Param("pageSize") Integer pageSize);

    //根据employee中的条件,分页查询,返回的是某一页的list (按条件查询, 分页返回)
    //map中可传入employee, start, pageSize
    List<Employee> selectBySelectiveWithPage(Map map);

    //根据empId组成的list 删除, 返回被删除的行数, 如果list的size为0, 那么就会报异常
    int deleteByEmpIdList(List<Integer> list);


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
    int updateByPrimaryKeySelective(Employee employee);

    //插入员工 : 除了自增的列以外, 其他各项数据必须全
    int insert(Employee employee);

}
