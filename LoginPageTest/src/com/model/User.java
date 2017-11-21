
package com.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_TABLE")
public class User implements Serializable {
    
    @Id @GeneratedValue
    private Long id;
    private String firstName;
    private String middleName;
    private String lastName;
    private String email;
    private String userId;
    private String password;

    public User() {
    }

    
    public User(String FirstName, String MiddleName, String LastName, String Email, String UserId, String Password) {
        this.firstName = FirstName;
        this.middleName = MiddleName;
        this.lastName = LastName;
        this.email = Email;
        this.userId = UserId;
        this.password = Password;
    }


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getMiddleName() {
		return middleName;
	}


	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
   
}
