package com.iclass.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor          //생성자 생성을 위해 getter, setter, noargsconstructor 사용
public class OrderDto {

    private String email;
    private String pcode;
    private int count;
}