package vet;

/**
 * :
 * Alke
 * 2020-06-16 10:53
 */
public class VetBean {
    private String name;
    private String sex;
    private String age;
    private String good;
    private String workage;
    private String phone;
    public VetBean(){}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGood() {
        return good;
    }

    public void setGood(String good) {
        this.good = good;
    }

    public String getWorkage() {
        return workage;
    }

    public void setWorkage(String workage) {
        this.workage = workage;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

//    @Override
//    public String toString() {
//        return "VetBean{" +
//                "name='" + name + '\'' +
//                ", sex='" + sex + '\'' +
//                ", age='" + age + '\'' +
//                ", good='" + good + '\'' +
//                ", workage='" + workage + '\'' +
//                ", phone='" + phone + '\'' +
//                '}';
//    }
}
