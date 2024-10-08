<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>게시글 삭제 처리</title>
</head>
<body>
<%
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbUser = "hr";
    String dbPass = "hr";
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
        
        String postId = request.getParameter("id");

        String sql = "DELETE FROM BOARD WHERE SEQ = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(postId));

        int result = pstmt.executeUpdate();

        if (result > 0) {
            out.print("success");
        } else {
            out.print("fail");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.print("error");
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
