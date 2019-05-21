import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcTest2 {
public static void main(String[] args) {
	try {
		// 1. 라이브러리를 메모리 등록
		Class.forName("com.mysql.jdbc.Driver");

		// 2. DB 연결
		String url = "jdbc:mysql://localhost:3306/java";		//mysql 서버 주소 공유가능
		String id = "root";
		String pw = "mysql";
		// java.sql 패키지 라이브러리 import
		Connection con = DriverManager.getConnection(url, id, pw);
		
		// 3. Query 실행 준비
		String sql = "insert into test (id ,name)	values";	//데이터 삽입 
		sql +="   (null, ?)";					// 틀을 잡아놓는다
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, "python");		// 틀에 데이터를 넣는다		//plays holder?
		
		// 4. Query 실행
		stmt.executeUpdate();
		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
