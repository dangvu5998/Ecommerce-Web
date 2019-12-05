package com.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "authority")
public class Authorities implements Serializable {

	private static final long serialVersionUID = 8734140534986494039L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer authorityId;
	private String emailId;
	private String authority;

	@ManyToMany(mappedBy = "authorities")
	List<User> users;

	public int getAuthorityId() {
		return authorityId;
	}

	public void setAuthorityId(int authorityId) {
		this.authorityId = authorityId;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
}
