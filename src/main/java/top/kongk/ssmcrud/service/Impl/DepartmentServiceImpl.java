package top.kongk.ssmcrud.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.kongk.ssmcrud.bean.Department;
import top.kongk.ssmcrud.dao.DepartmentDao;
import top.kongk.ssmcrud.service.DepartmentService;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    DepartmentDao departmentDao;

    @Override
    public List<Department> getDepts() {
        return departmentDao.selectAll();
    }
}
