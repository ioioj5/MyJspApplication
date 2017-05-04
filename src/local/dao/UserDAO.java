package local.dao;

import local.bean.Users;

/**
 * Created by ioioj5 on 2017/5/4.
 */
public class UserDAO {
    /**
     * 登录
     * @param u
     * @return
     */
    public boolean login(Users u) {
        if("admin".equals(u.getUserName()) && "123456".equals(u.getPassWord())) {
            return true;
        }else {
            return false;
        }
    }
}
