package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex1")
public class Ex1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String code1=request.getParameter("code1");
		String code2=request.getParameter("code2");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String email1=request.getParameter("email1");
		String email_select=request.getParameter("email_select");
		String postCode=request.getParameter("postCode");
		String adress1=request.getParameter("adress1");
		String adress2=request.getParameter("adress2");
		String hp=request.getParameter("hp");
		String job=request.getParameter("job");
		String inters[]=request.getParameterValues("inter");
		
		response.setContentType("text/html;charset=ER-KR");
		
		PrintWriter out=response.getWriter();
		
		out.print("<html><body>");
		
		out.print("이름:<b>");
		out.println(name);
		
		out.print("</b>주민번호:<b>");
		out.print(code1);
		out.print("-");
		out.println(code2);
		
		out.print("</b>아이디:<b>");
		out.println(id);
		
		out.print("</b>비밀번호:<b>");
		out.println(pwd);
		
		out.print("</b>이메일:<b>");
		out.print(email1);
		out.print("@");
		out.println(email_select);
		
		out.print("</b>우편번호:<b>");
		out.println(postCode);
	
		out.print("</b>주소:<b>");
		out.print(adress1);
		out.println(adress2);
		
		out.print("</b>핸드폰번호:<b>");
		out.println(hp);
		
		out.print("</b>직업:<b>");
		out.println(job);
		
		out.print("</b>관심분야:<b>");
		if(inters==null){
			out.println("선택항목이없습니다.");
		}
		else{
			for(String inter:inters){
				out.print(inter+"");
			}
		}
		out.println("</b><a hrerf='javascript:history.go(-1)'>다시</a>");
		out.print("</bodt></html>");
		out.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
