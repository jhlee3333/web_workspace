package teamD.project.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@Builder
@NoArgsConstructor
@ToString

public class MuserDto {
	private String ID;
	private String Passward;
	private String Name;
	private String NickName;
	private Date birth;
	private String Address;

}