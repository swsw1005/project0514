package com.webjjang.db.board;

import lombok.*;

@Getter
@Setter
@ToString
public class BoardDTO {

    private int no;
    private String title;
    private String content;
    private String writer;
    private String writedate;
    private int hit;
    private int reply_cnt;
    private String pw;

}