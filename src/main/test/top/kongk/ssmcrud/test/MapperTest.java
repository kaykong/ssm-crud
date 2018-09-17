package top.kongk.ssmcrud.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import top.kongk.ssmcrud.bean.Employee;
import top.kongk.ssmcrud.bean.Page;
import top.kongk.ssmcrud.dao.EmployeeDao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//使用junit的
@RunWith(SpringJUnit4ClassRunner.class)
//spring的配置文件
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    EmployeeDao employeeDao;

    @Test
    public void testSelectByPrimaryKey(){
        Employee employee = employeeDao.selectByPrimaryKey(1);
        System.out.println(employee);
    }

    @Test
    public void testSelectAllWithPage(){
        Page<Employee> page = new Page<>(1,6,employeeDao.countBySelective(null));
        List<Employee> employeeList = employeeDao.selectAllWithPage(page.getStart(), page.getPageSize());
        System.out.println("总记录数:" + page.getTotalCount());
        for (Employee employee : employeeList) {
            System.out.println(employee);
        }
    }

    @Test
    public void selectBySelectiveWithPage(){

        Employee employee = new Employee();
        //employee.setEmpName("%刚%");
        employee.setGender("F");

        Page<Employee> page = new Page<>(1,6,
                employeeDao.countBySelective(employee));

        System.out.println("符合条件的总记录数:" + page.getTotalCount());

        Map map = new HashMap(3);

        map.put("employee", employee);
        map.put("start", page.getStart());
        map.put("pageSize", page.getPageSize());
        List<Employee> employeeList =
                employeeDao.selectBySelectiveWithPage(map);
        System.out.println("当前记录数:" + employeeList.size());

        for (Employee emp : employeeList) {
            System.out.println(emp);
        }
    }

    @Test
    public void testDeleteByEmpIdList(){
        List<Integer> list = new ArrayList<>();
        list.add(40000);
        list.add(10000);
        int count = employeeDao.deleteByEmpIdList(list);
        System.out.println(count);
    }

    @Test
    public void testUpdateByPrimaryKeySelective(){
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
        Employee employee = new Employee();
        employee.setEmpId(3000);
        employee.setGender("F");
        //employee.setEmpName("哈哈");
        int count = employeeDao.updateByPrimaryKeySelective(employee);
        System.out.println(count);
    }

    @Test
    public void testInsert(){
        Employee employee = new Employee();
        employee.setEmpName("kong");
        int count = employeeDao.insert(employee);
        System.out.println(count);
    }



//    @Test insert
//    public void testCrud() {
//        //插入员工记录 先要开启批量操作 batch
//        int num = 1;
//        EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
//        for (int i = 0; i < num; ++i) {
//            Employee employee = RandomUser.getEmp();
//            System.out.println(employee);
//            employeeMapper.insertSelective(employee);
//        }
//    }

}
