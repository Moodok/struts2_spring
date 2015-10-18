package ua.nure.melnyk.daos;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

public class RolesTypeHandler implements TypeHandler<List<String>> {

    public static final String COMMA = ",";

    @Override
    public void setParameter(PreparedStatement preparedStatement, int i, List<String> roles, JdbcType jdbcType) throws SQLException {
        String rolesStr = "";
        for (String role : roles)
            rolesStr += role + ",";
        preparedStatement.setString(i, rolesStr);
    }

    @Override
    public List<String> getResult(ResultSet resultSet, String s) throws SQLException {
        String rolesStr = resultSet.getString(s);
        return Arrays.asList(rolesStr.split(COMMA));
    }

    @Override
    public List<String> getResult(ResultSet resultSet, int i) throws SQLException {
        String rolesStr = resultSet.getString(i);
        return Arrays.asList(rolesStr.split(COMMA));
    }

    @Override
    public List<String> getResult(CallableStatement callableStatement, int i) throws SQLException {
        String rolesStr = callableStatement.getString(i);
        return Arrays.asList(rolesStr.split(COMMA));
    }

}
