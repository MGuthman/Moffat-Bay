// Author: M.Guthman, O.Tsolmon
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.bean;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//This is a user Entity bean that maps the user registration table from mysql to the user object in Java.
//The table name and column name have to match the convention of a snake case. 
//If it doesn't match snake case and sql exception will thrown by spring.

@Entity
@Table(name = "user_registration")
public class User implements UserDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int userID;

	@Column(name = "email_address")
	private String emailAddress;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "password")
	private String password;
	
	@Column(name = "confirm_password")
	private String confirmPassword;

	public int getUserID() {
		return this.userID;
	}

	public String getEmailAddress() {
		return this.emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getConfirmPassword() {
		return this.confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	// When fecthing username, returning emailAdress as we are using emailAdress as username (per assignment instructions)
	public String getUsername(){
		return this.emailAddress;
	}

	public boolean isEnabled(){
		return true;
	}

	public boolean isCredentialsNonExpired(){
		return true;
	}

	// Adding "roles" to users
	public Collection<? extends GrantedAuthority> getAuthorities(){
		List <GrantedAuthority> permissions = new ArrayList<GrantedAuthority>();
		if (this.isEnabled()){
			permissions.add(new SimpleGrantedAuthority("USER"));
		}
		return permissions;
	}

	public boolean isAccountNonExpired(){
		return true;
	}

	public boolean isAccountNonLocked(){
		return true;
	}
}
