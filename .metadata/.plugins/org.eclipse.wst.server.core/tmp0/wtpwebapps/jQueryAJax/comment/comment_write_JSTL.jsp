<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="num" value="${param.num }" />
<c:set var="writer" value="${param.writer }" />
<c:set var="content" value="${param.content }" />
<c:set var="datetime" value="${param.datetime }" />

<c:set var="result" value="true" />
<c:set var="message" value="덧글이 작성되었습니다." />


<%-- XML 보내기 --%>
<?xml version="1.0" encoding="UTF-8"?>

<comment>
	<result>${result }</result>
	<message>${message }</message>
	<item>
		<num>${num }</num>
		<writer>${writer }</writer>
		<content>${content }</content>
		<datetime>${datetime }</datetime>
	</item>
</comment>

<%-- JSP 페이지 지시어:
이 부분에서는 JSP 페이지 설정을 정의합니다.

language="java"는 페이지에서 사용되는 언어가 Java임을 나타냅니다.
contentType="text/html; charset=UTF-8"은 페이지가 HTML 형식으로 출력되며, UTF-8 인코딩을 사용해 문자셋을 설정한다는 것을 의미합니다. UTF-8은 한글과 같은 다국어 문자를 지원합니다.
pageEncoding="UTF-8"은 JSP 페이지 자체의 인코딩을 UTF-8로 설정합니다.
trimDirectiveWhitespaces="true"는 JSP 페이지에서 발생할 수 있는 불필요한 공백을 제거합니다. 이를 통해 XML이나 HTML 문서에서 공백에 의한 오류를 방지할 수 있습니다.
JSTL 코어 라이브러리 태그 사용:

@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"은 JSP 표준 태그 라이브러리(JSTL)의 코어 라이브러리를 사용하기 위한 선언입니다. 이 태그 라이브러리를 사용하여 JSP에서 더 간결한 코드를 작성할 수 있습니다.
c:set 태그는 변수에 값을 설정하는 데 사용됩니다. 여기서는 클라이언트로부터 전달된 파라미터를 각각의 변수에 저장합니다. num, writer, content, datetime은 각각 댓글의 고유 번호, 작성자, 내용, 작성 시간을 의미합니다.
c:set을 사용해 result와 message 변수도 설정합니다. result는 요청 처리의 성공 여부를 나타내며, message는 사용자에게 전달될 메시지를 의미합니다.
XML 선언 및 생성:

<?xml version="1.0" encoding="UTF-8"?>는 이 문서가 XML 형식이며, UTF-8 인코딩을 사용한다는 것을 선언합니다.
<comment> 태그는 이 XML 문서의 루트 요소입니다. 이 루트 요소 내에 result, message, item 태그들이 포함됩니다.
${} 구문을 사용하여 JSTL에서 설정한 변수를 XML 태그 내에 삽입합니다. 이는 클라이언트가 요청한 데이터와 서버가 처리한 결과를 XML 형식으로 전달하는 데 사용됩니다.
<result> 태그는 요청의 성공 여부를 나타내며, true 값이 설정됩니다.
<message> 태그는 사용자에게 전달될 메시지를 포함하며, 여기서는 "덧글이 작성되었습니다."라는 메시지가 출력됩니다.
<item> 태그 내에는 댓글의 각 세부 정보가 포함됩니다. num은 댓글의 고유 번호, writer는 작성자의 이름, content는 댓글의 내용, datetime은 댓글이 작성된 날짜와 시간을 나타냅니다.
 --%>