package pojofiles;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class test {

	public static void main( String[] args )
    {
		 try{
			    Configuration cfg = new Configuration();
				cfg.configure("hibernate.cfg.xml");
				SessionFactory factory = cfg.buildSessionFactory();
				Session session2 = factory.openSession();
				Transaction t = session2.beginTransaction();
				addnotes n1 = new addnotes();
				n1.setNid ("hmm");
				n1.setTitle("hiberante");
				n1.setParagraph("framwork");
				
				session2.save(n1);
				t.commit();
				session2.close();
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
    	}
    
	
}
