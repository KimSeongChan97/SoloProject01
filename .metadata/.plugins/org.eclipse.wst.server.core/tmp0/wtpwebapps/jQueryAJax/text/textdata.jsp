<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
<!-- 
<%@ page ... %>는 JSP 페이지 지시어(Directive)로, 이 페이지에 대한 다양한 속성을 정의하는 역할을 한다.
여기서는 페이지 언어(language), 내용 타입(contentType), 페이지 인코딩(pageEncoding)을 설정하고 있다.
language="java"는 이 페이지가 Java 언어를 사용함을 나타내며, contentType="text/html; charset=UTF-8"은 이 페이지가 HTML 형식의 응답을 제공하며 UTF-8 인코딩을 사용할 것을 지시한다.
pageEncoding="UTF-8"은 이 JSP 파일 자체가 UTF-8로 인코딩되어 있음을 나타낸다.
이 지시어는 JSP 페이지가 어떻게 렌더링되고 처리될지를 결정하는 중요한 역할을 한다.

// Java 코드 내용
// JSP에서 Java 코드를 작성하기 위해 <% %> 구문을 사용한다. 이 안에 작성된 코드는 JSP가 실행될 때 서블릿 코드로 변환되어 실행된다.
// 자바 구문 안에서 request 객체를 사용하여 클라이언트가 보낸 데이터를 받을 수 있다.
// 예를 들어, request.getParameter("keyword")는 HTML 폼을 통해 전송된 "keyword"라는 이름의 파라미터 값을 가져온다.
// 이 메소드는 GET 또는 POST 요청에 포함된 파라미터 값을 읽어오며, HTML 폼 데이터 또는 URL 쿼리 파라미터를 통해 전달되는 값을 처리하는 데 주로 사용된다.


// 클라이언트가 보낸 "keyword" 파라미터 값을 받아서 변수 result에 저장한다.
// 이 값을 받아 페이지에 출력하거나 로직에 활용할 수 있다.
String result = request.getParameter("keyword");

// 만약 "keyword" 값이 클라이언트에서 전달되지 않았다면, result는 null 값을 가지게 된다.
// 이 경우 null 처리를 통해 적절한 디폴트 값을 지정하거나 별도의 로직을 처리할 수 있다.


결과 = <%=result %> 
// <%= %> 구문을 사용하여 자바 표현식을 HTML 페이지에 출력할 수 있다.
// result 변수의 값이 JSP 페이지에 그대로 출력되며, null 값이면 빈 문자열이 출력될 것이다.

--%>

결과는 = ${ param.keyword } <%-- EL / JSTL --%>
<!-- 
Expression Language(EL)를 사용한 파라미터 접근 방식이다.
${ param.keyword }는 request.getParameter("keyword")와 동일한 역할을 한다.
EL은 JSP에서 더욱 간결하게 데이터를 출력하거나 접근할 수 있도록 도와준다.
-->

<%-- 

<%= %>는 표현식(Expression) 구문으로, 자바 표현식을 HTML 페이지에 출력하는 데 사용된다.
여기서는 자바 변수 result의 값을 JSP 페이지에 출력하게 된다.
즉, 클라이언트가 보낸 "keyword" 파라미터 값이 이 위치에 출력되며, result 변수의 값이 null이 아니면 해당 값을, null이라면 빈 문자열을 출력하게 된다.


Java Server Page
JSP(Java Server Pages)는 자바 기반의 동적 웹 페이지를 만들기 위한 기술이다. JSP는 HTML 코드 내에 자바 코드를 삽입할 수 있도록 지원한다.

  " < %@ % > ": directive(page)
  페이지 디렉티브는 JSP 페이지의 설정을 정의하는 부분이다. 예를 들어, 이 페이지의 언어 설정, 출력할 콘텐츠 유형, 인코딩 방식을 정의할 수 있다.
	contentType= "text/html, javascript ... "
	이 옵션을 사용해 페이지가 클라이언트에게 전송될 때의 MIME 타입과 문자 인코딩을 설정할 수 있다. 일반적으로 text/html; charset=UTF-8로 설정한다.

	자바 구역 만들기
	< %
	//java
	%>
	자바 코드를 JSP 내에서 사용하려면 <% %> 태그를 사용한다. 
	이 안에 자바 코드를 작성할 수 있으며, 이를 스크립틀릿(scriptlet)이라고 한다. 스크립틀릿 내의 자바 코드는 JSP가 실행될 때 자바 코드로 컴파일되어 실행된다.
	예를 들어, <% out.print("Hello, World!"); %>처럼 HTML 코드 안에 자바 출력을 포함시킬 수 있다.

	추가로, JSP 페이지에서 request.getParameter()와 같은 메소드를 사용하여 클라이언트가 보낸 데이터를 쉽게 받아 처리할 수 있다.
	이 메소드는 GET 또는 POST 요청에 포함된 파라미터 값을 읽어오며, HTML 폼 데이터 또는 URL 쿼리 파라미터를 통해 전달되는 값을 처리하는 데 주로 사용된다.
	
--%>
