package com.july.networkdisk.dao;

import com.july.networkdisk.vo.*;
import org.apache.ibatis.session.*;

public class UsersDao extends BaseDao
{
    public void save(final Users user) {
        final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        sqlSession.insert("usersSpace.add", (Object)user);
        sqlSession.close();
    }
}
