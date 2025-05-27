package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class NaverRes {

	String id;
	String nickname;
	String profile_image;
	String email;
	String name;
	String birthyear;
}
