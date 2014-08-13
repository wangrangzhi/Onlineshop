package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbconn;

public class registaction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public registaction() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		int a[2][3];   

		int b[][3]={0,1,2,3}; 
		int c[1] ={0};   
		int d[3][]={{1,2},{1,2,3},{1,2,3,4}}; 
		
		out.flush();
		out.close();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String regname, realname, password, birthday, sexy, email, addr, idfycard, bankID;
		String year, month, day;
		
		regname = request.getParameter("regname");
		realname = request.getParameter("realname");
		password = request.getParameter("psw");
		year = request.getParameter("year");
		month = request.getParameter("month");
		day = request.getParameter("day");
		birthday = year+"-"+month+"-"+day;
		sexy = request.getParameter("sexy");
		email = request.getParameter("email");
		addr = request.getParameter("addr");
		idfycard = request.getParameter("idfycard");
		bankID = request.getParameter("bankID");
		
		dbconn dbcon = new dbconn();
				
		String insertStr = "insert into userinfo(regname,realname,password,birthday,sexy,email,Address,Identifyid,bankID) values";
		
		insertStr=insertStr+"('"+regname+"',";
		insertStr=insertStr+"'"+realname+"',";
		insertStr=insertStr+"'"+password+"',";
		insertStr=insertStr+"'"+birthday+"',";
		insertStr=insertStr+"'"+sexy+"',";
		insertStr=insertStr+"'"+email+"',";
		insertStr=insertStr+"'"+addr+"',";
		insertStr=insertStr+"'"+idfycard+"',";
		insertStr=insertStr+"'"+bankID+"')";
			
		boolean flag = dbcon.executeUpdate(insertStr);
		
		if(flag == true)
		{
			dbcon.destroy();
			out.print("<script language=\"javascript\">window.location.replace(\"main.jsp\"); </script>");
		}else
		{
			dbcon.destroy();
			System.out.println("≤Â»Î ß∞‹");
			out.print("<script language=\"javascript\">window.history.go(-1);</script>");
		}
	}


	public void init() throws ServletException {
		// Put your code here
	}

}
