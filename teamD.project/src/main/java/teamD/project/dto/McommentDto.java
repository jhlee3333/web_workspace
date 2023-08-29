package teamD.project.dto;

import java.sql.Timestamp;

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

public class McommentDto {
	private int idx;
	private long mref;
	private String writer;
	private String content;
	private Timestamp createdAt;
	private int heart;
	
}