package core.modelDAO;

import core.dao.ObjectDAO;
import core.model.User;

public class DAO_User extends ObjectDAO<User> {
	public DAO_User() {
		this.table = "User";
	}
}
