package com.github.xxbeanxx.tiles.freemarker;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.tiles.request.Request;
import org.apache.tiles.request.freemarker.render.AttributeValueFreemarkerServlet;
import org.apache.tiles.request.servlet.ServletRequest;
import org.apache.tiles.request.servlet.ServletUtil;

/**
 * @author gregory.j.baker
 */
public class FreemarkerRenderer extends org.apache.tiles.request.freemarker.render.FreemarkerRenderer {

    public FreemarkerRenderer(AttributeValueFreemarkerServlet servlet) {
    	super(servlet);
    }

    @Override
    public void render(String path, Request request) throws IOException {
        final ServletRequest servletRequest = ServletUtil.getServletRequest(request);
        final HttpServletRequest httpRequest = servletRequest.getRequest();

        httpRequest.setAttribute("contextPath", httpRequest.getContextPath());
        httpRequest.setAttribute("locale", request.getRequestLocale());
        
        super.render(path, request);
    }

}
