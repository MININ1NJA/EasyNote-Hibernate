package pojofiles;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class addnotes {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int nid;
    private String Title;
    private String Paragraph;
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getParagraph() {
		return Paragraph;
	}
	public void setParagraph(String paragraph) {
		Paragraph = paragraph;
	}
	public void setNid(String string) {
		// TODO Auto-generated method stub
		
	}
    
  
}
