package DbContext;
import java.sql.ResultSet;
import DbModel.Creditcard;

public class dbCreditcards extends dbContext {
	public static final String id_col = "id";
	public static final String first_name_col = "first_name";
	public static final String last_name_col = "last_name";
	public static final String expiration_col = "expiration";
	public static final String table_name = "creditcards";
	
	public dbCreditcards(){
		super();
		this.tableName = dbCreditcards.table_name;
	}
	
	public Creditcard GetCreditcard(String card_id){
		String selectQuery = String.format("select * from %s where id = '%s'", this.tableName, card_id);
		ResultSet r = super.ExecuteQuery(selectQuery);
		Creditcard c = null;
		
		try{
		    while (r.next())
		    {
		    	c = new Creditcard();
		    	c.id = r.getString(dbCreditcards.id_col);
		    	c.first_name = r.getString(dbCreditcards.first_name_col);
		    	c.last_name = r.getString(dbCreditcards.last_name_col);
		    	c.expiration = r.getDate(dbCreditcards.expiration_col);
		    }
		}
		catch(Exception e){
			System.out.println("Error occured, credit card does not exist");
			return null;
		}
		return c;
		
	}
	
	
}
