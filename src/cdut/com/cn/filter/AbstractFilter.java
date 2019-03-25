package cdut.com.cn.filter;

import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class AbstractFilter implements Filter{  

    public void destroy() {}  

    public void doFilter(ServletRequest request, ServletResponse response,  
            FilterChain chain) {
    	try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    public void init(FilterConfig filterConfig) throws ServletException {}  

}  	