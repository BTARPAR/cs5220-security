package cs520.security.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SampleFilter implements Filter {

    public SampleFilter()
    {
    }

    public void doFilter( ServletRequest request, ServletResponse response,
        FilterChain chain ) throws IOException, ServletException
    {
        request.setAttribute( "a", 10 );
        request.setAttribute( "b", 20 );

        chain.doFilter( request, response );

        response.setContentType( "text/plain" );
    }

    public void init( FilterConfig fConfig ) throws ServletException
    {
    }

    public void destroy()
    {
    }

}
