package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.User;

//ユーザテーブル用のDao

public class UserDao {
//ログインIDとパスワードに紐づくユーザ情報を返す

	public User FindByLoginInfo(String loginId, String password) {
		Connection conn = null;
		try {
			//データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			String sql = "SELECT * FROM user WHERE login_id = ? and password = ?";

			//SELECT文を実行し、結果を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,loginId);
			pStmt.setString(2,password);
			ResultSet rs =pStmt.executeQuery();

			//主キーに紐づくレコードは一件のみなので、rs.next()は一回だけ行う
			if(!rs.next()) {
				return null;
			}

			String loginIdData = rs.getString("login_id");
			String nameData = rs.getString("name");
			return new User(loginIdData, nameData);

		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}finally {

			//データベース切断
			if(conn !=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
					return null;
				}

			}

		}

	}
	//全てのユーザ情報を取得する
	public List<User> findAll(){
		Connection conn = null;
		List<User> userList = new ArrayList<User>();

		try {
			// データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			// TODO: 未実装：管理者以外を取得するようSQLを変更する
			String sql = "SELECT * FROM user";

			// SELECT文を実行し結果表を取得
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			// 結果表に格納されたレコードの内容を
			// Userインスタンスに設定し、ArrayListインスタンスに追加
			while(rs.next()) {
				int id = rs.getInt("id");
				String loginId = rs.getString("login_id");
				String name = rs.getString("name");
				Date birthDate = rs.getDate("birth_date");
				String password = rs.getString("password");
				String createDate = rs.getString("create_date");
				String updateDate = rs.getString("update_date");
				User user = new User(id,loginId,name,birthDate,password,createDate,updateDate);

				userList.add(user);
			}

		}catch(SQLException e){
			e.printStackTrace();
			return null;

		} finally {
			//データベース切断
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
		return userList;
	}
		public void Add(String loginId, String password, String userName, String birthDate) {
			Connection conn = null;
			try {
				//データベースへ接続
				conn = DBManager.getConnection();

				// INSERT文を準備
				String sql = "INSERT INTO user (login_id, password, name, birth_date, create_date, update_date) VALUES (?,?,?,?,now(),now())";
				//INSERTT文を実行し、結果を取得
				PreparedStatement pStmt = conn.prepareStatement(sql);
				pStmt.setString(1,loginId);
				pStmt.setString(2,password);
				pStmt.setString(3,userName);
				pStmt.setString(4,birthDate);

				pStmt.executeUpdate();
				pStmt.close();


			}catch(SQLException e) {
				e.printStackTrace();
			}finally {

				//データベース切断
				if(conn !=null) {
					try {
						conn.close();
					}catch(SQLException e) {
						e.printStackTrace();
					}

				}

			}

		}

	public void Update (String id, String loginId, String password, String userName, String birthDate) {
		Connection conn = null;
		try {
			//データベースへ接続
			conn = DBManager.getConnection();

			// UPDATE文を準備
			String sql = "UPDATE user set login_id = ?, password = ?, name = ?, birth_date = ?, update_date = now() where id = ?";
			//UPDATE文を実行し、結果を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,loginId);
			pStmt.setString(2,password);
			pStmt.setString(3,userName);
			pStmt.setString(4,birthDate);
			pStmt.setString(5, id);

			pStmt.executeUpdate();
			pStmt.close();


		}catch(SQLException e) {
			e.printStackTrace();
		}finally {

			//データベース切断
			if(conn !=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}

			}

		}
	}public void Delete (String id) {
		Connection conn = null;
		try {
			//データベースへ接続
			conn = DBManager.getConnection();

			// DELETE文を準備
			String sql = "delete from user where id= ?";
			//DELETE文を実行
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,id);
			pStmt.executeUpdate();
			pStmt.close();


		}catch(SQLException e) {
			e.printStackTrace();
		}finally {

			//データベース切断
			if(conn !=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}

			}

		}
	}public User ShowRef(String Id) {
		Connection conn = null;
		try {
			//データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			String sql = "SELECT * FROM user WHERE id = ?";

			//SELECT文を実行し、結果を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,Id);
			ResultSet rs =pStmt.executeQuery();

			//主キーに紐づくレコードは一件のみなので、rs.next()は一回だけ行う
			if(!rs.next()) {
				return null;
			}

			int idData =rs.getInt("id");
			String loginIdData = rs.getString("login_id");
			String nameData = rs.getString("name");
			Date BirthDateData = rs.getDate("birth_date");
			String createDateData = rs.getString("create_date");
			String updateDateData = rs.getString("update_date");

			return new User(idData, loginIdData, nameData, BirthDateData,null ,createDateData, updateDateData);

		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}finally {

			//データベース切断
			if(conn !=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
					return null;
				}

			}

		}

	}

}
