package top.kongk.ssmcrud.dao;

import top.kongk.ssmcrud.bean.Department;

import java.util.List;

public interface DepartmentDao {
    //获取部门的所有信息
    List<Department> selectAll();
}
