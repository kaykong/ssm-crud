package top.kongk.ssmcrud.bean;


import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;

public class Employee implements Serializable{
    private Integer empId;

    @NotBlank(message = "重要参数不能为空")
    @Pattern(regexp = "(^[a-zA-Z0-9]{6,16})|(^[\\u2E80-\\u9FFF]{2,15})",
            message = "用户名6~16为字母数字组合 , 或2~15个汉字")
    private String empName;

    @NotBlank(message = "重要参数不能为空")
    private String gender;

    @NotBlank(message = "重要参数不能为空")
    @Pattern(regexp = "^[a-z\\d]+(\\.[a-z\\d]+)*@([\\da-z](-[\\da-z])?)+(\\.{1,2}[a-z]+)+$",
            message = "邮箱格式不正确")
    private String email;

    @NotNull(message = "重要参数不能为空")
    private Integer departId;

    private Department department;

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName == null ? null : empName.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    @Override
    public String toString() {
        return "Employee{" +
                "empId=" + empId +
                ", empName='" + empName + '\'' +
                ", gender='" + gender + '\'' +
                ", email='" + email + '\'' +
                ", departId=" + departId +
                ", department=" + department +
                '}';
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getDepartId() {
        return departId;
    }

    public void setDepartId(Integer departId) {
        this.departId = departId;
    }
}