package top.kongk.ssmcrud.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.kongk.ssmcrud.bean.Employee;
import top.kongk.ssmcrud.bean.Page;
import top.kongk.ssmcrud.dao.EmployeeDao;
import top.kongk.ssmcrud.service.EmployeeService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeDao employeeDao;


    @Override
    public Employee getEmpById(Integer id) {
        return employeeDao.selectByPrimaryKey(id);
    }

    @Override
    public boolean deleteEmpByEmpIds(List<Integer> list) {
        return employeeDao.deleteByEmpIdList(list) == list.size();
    }


    @Override
    public boolean updateByPrimaryKeyAndSelective(Employee employee) {
        //employee在controller 那里已经验证 @valid 了
        return employeeDao.updateByPrimaryKeySelective(employee) > 0;
    }

    @Override
    public Page<Employee> getEmpsBySelectiveWithPage(Employee employee, int currPage, int pageSize) {

        int totalCount = employeeDao.countBySelective(employee);

        if (currPage < 0)
            currPage = 1;

        //初始化Page 生成Page对象,传入当前页数,每页的记录数,以及记录总数
        Page<Employee> page = new Page<>(currPage,pageSize,totalCount);

        if (totalCount == 0)
            return page;

        //设置map, 因为 employeeDao.selectBySelectiveWithPage(map) 需要
        Map map = new HashMap(3);
        map.put("employee", employee);
        map.put("start", page.getStart());
        map.put("pageSize", page.getPageSize());

        List<Employee> employeeList = employeeDao.selectBySelectiveWithPage(map);

        page.setLists(employeeList);

        return page;
    }


    @Override
    public int insertEmp(Employee employee) {
        //employee在controller 那里已经验证 @valid 了
        return employeeDao.insert(employee);
    }


    @Override
    public boolean checkEmpByName(String name) {
        //如果该name在表中查不到,则返回null
        Integer count = employeeDao.countByName(name);

        return count == null;
    }
}
