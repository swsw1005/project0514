package com.webjjang.db.board;

import java.util.*;
import java.sql.*;
import com.webjjang.util.db.DBInfo;

public class BoardDAO {

    // DB 전역 변수
    Connection con = null;
    // Statement stmt = null;
    PreparedStatement pstmt = null;
    Statement stmt = null;
    ResultSet rs = null;

    public List<BoardDTO> getList() throws Exception {
        // 출력객체
        List<BoardDTO> list = new ArrayList<>();

        try {
            // 1+2
            con = DBInfo.getConnection();
            // 3. sql
            String sql = "select no, title, writer, to_char(writedate, 'yyyy-mm-dd') writedate,"
                    + " hit from board order by no desc";

            // 4. 실행객체
            pstmt = con.prepareStatement(sql);
            // 5. 실행
            rs = pstmt.executeQuery();
            // rs = pstmt.executeUpdate();
            // 6. 표시 > list에 담기
            if (rs != null) {
                while (rs.next()) {
                    BoardDTO dto = new BoardDTO();
                    dto.setNo(rs.getInt("no"));
                    dto.setTitle(rs.getString("title"));
                    dto.setWriter(rs.getString("writer"));
                    dto.setWritedate(rs.getString("writedate"));
                    dto.setHit(rs.getInt("hit"));
                    list.add(dto);
                }
            }
        } catch (Exception e) {
            e.getStackTrace();
            throw new Exception("list작업중 오류");
        } finally {
            DBInfo.close(con, pstmt, rs);
        }
        return list;
    } // getList() end-----------

    public BoardDTO getDTO(int no) throws Exception {
        // 출력객체
        BoardDTO dto = new BoardDTO();

        try {
            // 1+2
            con = DBInfo.getConnection();
            // 3. sql
            String sql = "select no, title, content,  writer, to_char(writedate, 'yyyy.mm.dd') writedate,"
                    + " hit from board where no=?";

            // 4. 실행객체
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, no);
            // 5. 실행
            rs = pstmt.executeQuery();
            // rs = pstmt.executeUpdate();
            // 6. 표시 > list에 담기
            if (rs != null) {
                while (rs.next()) {
                    dto.setNo(rs.getInt("no"));
                    dto.setTitle(rs.getString("title"));
                    dto.setContent(rs.getString("content"));
                    dto.setWriter(rs.getString("writer"));
                    dto.setWritedate(rs.getString("writedate"));
                    dto.setHit(rs.getInt("hit"));
                }
            }
        } catch (Exception e) {
            e.getStackTrace();
            throw new Exception("  ");
        } finally {
            DBInfo.close(con, pstmt, rs);
        }
        return dto;
    } // getDTO() end------------

    public int insert(BoardDTO dto) throws Exception {
        // 출력객체
        int result = 0;

        try {
            // 1+2
            con = DBInfo.getConnection();
            // 3. sql
            String sql = "insert into board(no, title, content, writer, writedate , pw) "
                    + " values(board_seq.nextval, ?, ?, ?, sysdate, '12345')";
            // 4. 실행객체
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setString(3, dto.getWriter());
            // 5. 실행
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.getStackTrace();
            throw new Exception("  ");
        } finally {
            DBInfo.close(con, pstmt, rs);
        }
        return result;
    } // insert() end------------

    public int update(BoardDTO dto) throws Exception {
        // 출력객체
        int result = 0;

        try {
            // 1+2
            con = DBInfo.getConnection();
            // 3. sql
            String sql = "update board set title = ?, content = ?  where no = ?";

            // 4. 실행객체
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setInt(3, dto.getNo());
            // 5. 실행
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.getStackTrace();
            throw new Exception("  ");
        } finally {
            DBInfo.close(con, pstmt, rs);
        }
        return result;
    } // update() end------------

    public int delete(int no) throws Exception {
        // 출력객체
        int result = 0;

        try {
            // 1+2
            con = DBInfo.getConnection();
            // 3. sql
            String sql = "delete from board where no = ?";
            // 4. 실행객체
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, no);
            // 5. 실행
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.getStackTrace();
            throw new Exception("  ");
        } finally {
            DBInfo.close(con, pstmt, rs);
        }
        return result;
    } // delete() end------------

}