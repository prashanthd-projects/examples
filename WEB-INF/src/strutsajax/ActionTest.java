package strutsajax;

import com.opensymphony.xwork2.ActionSupport;

public class ActionTest extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String e_name;
	public String e_id;
	public String e_role;

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getE_id() {
		return e_id;
	}

	public void setE_id(String e_id) {
		this.e_id = e_id;
	}

	public String getE_role() {
		return e_role;
	}

	public void setE_role(String e_role) {
		this.e_role = e_role;
	}

	public ActionTest() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String execute() throws Exception {
		Thread.sleep(2000);
		System.out.println("E_name: " + e_name);
		System.out.println("E_id: " + e_id);
		System.out.println("E_role: " + e_role);
		return SUCCESS;
	}

}
