package clock;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class FBLoginServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws IOException, ServletException {
		//resp.sendRedirect("fb_login.html");
		String requestedPath = "/WEB-INF/fb_login.html";
		req.getRequestDispatcher(requestedPath).forward(req, resp);
	}
}
