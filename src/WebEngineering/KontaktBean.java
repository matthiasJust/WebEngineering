package WebEngineering;

import java.util.Date;

public class KontaktBean {

	private String Name;
	private String Vorname;
	private String Mail;
	private String Headline;
	private Date Datum;
	private String Nachricht;
	
	public KontaktBean(String Name, String Vorname, String Mail, String Headline, Date Datum, String Nachricht) {
		  
		this.Name = Name;
		this.Vorname = Vorname;
		this.Mail = Mail;
		this.Headline = Headline;
		this.Datum = Datum;
		this.Nachricht = Nachricht;
		
	}
	
	
	
	public String getName() {
		return Name;
	}



	public void setName(String name) {
		Name = name;
	}



	public String getVorname() {
		return Vorname;
	}



	public void setVorname(String vorname) {
		Vorname = vorname;
	}



	public String getMail() {
		return Mail;
	}



	public void setMail(String mail) {
		Mail = mail;
	}



	public String getHeadline() {
		return Headline;
	}



	public void setHeadline(String headline) {
		Headline = headline;
	}



	public Date getDatum() {
		return Datum;
	}



	public void setDatum(Date datum) {
		Datum = datum;
	}



	public String getNachricht() {
		return Nachricht;
	}



	public void setNachricht(String nachricht) {
		Nachricht = nachricht;
	}
 
	

	

}
