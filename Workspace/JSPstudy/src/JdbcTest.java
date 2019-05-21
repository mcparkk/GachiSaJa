import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcTest {
public static void main(String[] args) {
	try {
		// 1. ���̺귯���� �޸� ���
		Class.forName("com.mysql.jdbc.Driver");

		// 2. DB ����
		String url = "jdbc:mysql://localhost:3306/java";		//mysql ���� �ּ� ��������
		String id = "root";
		String pw = "mysql";
		// java.sql ��Ű�� ���̺귯�� import
		Connection con = DriverManager.getConnection(url, id, pw);
		
		// 3. Query ���� �غ�
		String sql = "select id, name from test";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		// 4. Query ����
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			int id2 = rs.getInt("id");
			String name = rs.getString("name");
			System.out.println(id2 + " "+ name);
		}
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
