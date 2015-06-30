package WebEngineering;

import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Application;

@Path("zeit")
public class Zeit {
	private ZoneId zone;

	public Zeit() {
		 
	}
 
	@GET  
	@Path("news")
	public String news() {
		 
		return "HEllo World!";
	}

	@PUT
	public void setZone(@DefaultValue("Europe/Berlin") @QueryParam("zeitzone") String z) {
		this.zone = ZoneId.of(z);
	}
}