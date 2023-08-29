package teamD.project.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder

public class MproductDto {

	private String Pname;
	private int Pcode;
	private String ID;
	private int price;
	private String Brand;
	private int Psize;
	private String Category;
	private int readCount;

	
	

}