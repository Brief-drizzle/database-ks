package database.test;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;

public class SqlSessionBase {
    private static SqlSessionFactory sqlSessionFactory;

    public static SqlSession getSqlSession() {
        try {
            Reader reader = Resources.getResourceAsReader("database/test/applicationContext.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sqlSessionFactory.openSession();
    }
}
