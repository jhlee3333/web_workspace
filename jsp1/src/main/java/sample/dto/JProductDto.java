package sample.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
@AllArgsConstructor
@Builder
public class JProductDto {
	private String pcode;
	private String category;
	private String pname;
	private int price;

}
