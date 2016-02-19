package sit.query;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sit.process.MysqlConnect;

public class Test extends HttpServlet {

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
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		
		MysqlConnect test = new MysqlConnect () ;
		try {
			test.getPages(new int []{1,2,3});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for ( int i = 0 ; i < test.getQr().size(); ++ i){
			out.print("<a href="+test.getQr().get(i).getUrl()+ ">"+test.getQr().get(i).getUrl()+"</a><BR>");
			out.println(test.getQr().get(i).getPage_abstract() + "<BR><BR><BR>");
		}
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String query = request.getParameter("query");
		//process the query 
		
		
		
		//search the index and get the score for each document		
		
		
		
		//pick the top 30 doc_id and fetch the information from the database
		
		
		
		//tag the key words in the abstract
		
		
		//write the result to the some object and pass it to jsp and show the result to client
		MysqlConnect test = new MysqlConnect () ;
		try {
			test.getPages(new int []{1,2,3});
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("qrList",test.getQr());
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/result.jsp");
		rd.forward(request,response);
		
	}
	

}
