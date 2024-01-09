package smsimulator.Controler;

import org.mariadb.jdbc.MariaDbDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DatabaseHelper {
    private static DatabaseHelper instance;
    private static MariaDbDataSource dataSource;

    private DatabaseHelper() throws SQLException {
        // Initialize the DataSource once
        if (dataSource == null) {
            dataSource = new MariaDbDataSource();
            dataSource.setUrl("jdbc:mariadb://localhost:3306/smsimulator");
            dataSource.setUser("root");
            dataSource.setPassword(null);
        }
    }

    public static synchronized DatabaseHelper getInstance() {
        if (instance == null) {
            try {
                instance = new DatabaseHelper();
            } catch (SQLException e) {
                // Handle the exception
                e.printStackTrace();
            }
        }
        return instance;
    }

    public Connection getConnection() throws SQLException {
        if (dataSource == null) {
            throw new SQLException("DataSource is not initialized");
        }
        return dataSource.getConnection();
    }
}
