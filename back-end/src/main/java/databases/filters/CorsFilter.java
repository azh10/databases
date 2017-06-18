package databases.filters;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Ashton Ansag.
 */
@Component
@Order(Ordered.HIGHEST_PRECEDENCE)
public class CorsFilter implements Filter {

    private static final Logger LOGGER = LoggerFactory.getLogger(CorsFilter.class);

    public CorsFilter() {
        super();
    }

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpServletRequest httpReq = (HttpServletRequest) req;
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, PATCH, DELETE, HEAD, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", httpReq.getHeader("Access-Control-Request-Headers"));

        if (((HttpServletRequest) req).getMethod().matches("OPTIONS")) {
            response.setStatus(HttpServletResponse.SC_OK);
        } else {
            chain.doFilter(req, resp);
        }
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        LOGGER.info("Filter init with configuration: {}", arg0);
    }
}