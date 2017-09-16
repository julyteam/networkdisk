package com.july.networkdisk.dao;

import com.july.networkdisk.vo.*;
import org.apache.ibatis.session.*;

public class UserDao extends BaseDao
{
    public void save(final User user) {
        final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        sqlSession.insert("userSpace.add", (Object)user);
        sqlSession.close();
    }
}
