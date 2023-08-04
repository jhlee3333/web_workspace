package sample.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
@AllArgsConstructor
@Builder
public class JCustomerDto {		
	private String custom_id;
	private String name;
	private String email;
	private int age;
	private Date reg_date;
	
}
