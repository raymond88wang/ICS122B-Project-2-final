package DbContext;
import java.sql.*;


public class dbContext{
	private static Connection sqlConnection = null;
	public String tableName = null;
	
	public dbContext(){
		try{
			sqlConnection = dbConnection.GetConnection();
			if(sqlConnection == null){
				System.out.println("We do not have connection to databse");
			}
				
		}
		catch(Exception e){
			System.out.println("We do not have connection to databse");
		}
	}
	protected ResultSet ExecuteQuery(String query){
		try{
			 Statement select = sqlConnection.createStatement();
			 return select.executeQuery(query);
		}
		catch(Exception e){
			System.out.println("Could not execute query");
			return null;
		}
	}
	
	protected int ExecuteUpdate(String updateQuery){
		try{
			 Statement select = sqlConnection.createStatement();
			 return select.executeUpdate(updateQuery);
		}
		catch(Exception e){
			System.out.println("Could not execute update");
			System.out.println("Exception: " + e.toString());
			return -1;
		}
	}
	
	protected void PrintMetaData(){
		try{
			String selectQuery = String.format("select * from %s limit 1", this.tableName);
			ResultSet r = this.ExecuteQuery(selectQuery);
			ResultSetMetaData metadata = r.getMetaData();
			System.out.println(String.format("\n==========\nFor Table: %s,\nThere are %d columns", this.tableName, metadata.getColumnCount()));
			// Print type of each attribute
			for (int i = 1; i <= metadata.getColumnCount(); i++)
				System.out.println(String.format("Column %s, has type of %s", metadata.getColumnLabel(i), metadata.getColumnTypeName(i)));
		}
		catch(Exception e){
			System.out.println("Failed to print meta data");
		}

	}

}
