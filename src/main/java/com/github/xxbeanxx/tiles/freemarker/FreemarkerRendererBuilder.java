package com.github.xxbeanxx.tiles.freemarker;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;

import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.freemarker.FreemarkerRequestException;
import org.apache.tiles.request.freemarker.render.AttributeValueFreemarkerServlet;
import org.apache.tiles.request.freemarker.render.FreemarkerRenderer;
import org.apache.tiles.request.freemarker.render.InitParamsServletConfig;

/**
 * @author gregory.j.baker
 */
public final class FreemarkerRendererBuilder {

    private Map<String, String> params = new HashMap<String, String>();

    private ApplicationContext applicationContext;

    private FreemarkerRendererBuilder() {
    	/* intentionally left blank */
    }

    public static FreemarkerRendererBuilder createInstance() {
        return new FreemarkerRendererBuilder();
    }

    /**
     * Sets a parameter for the internal servlet.
     *
     * @param key The name of the parameter.
     * @param value The value of the parameter.
     * @return This object.
     */
    public FreemarkerRendererBuilder setParameter(String key, String value) {
        params.put(key, value);
        return this;
    }

    /**
     * Sets the application context.
     *
     * @param applicationContext The application context.
     * @return This object.
     */
    public FreemarkerRendererBuilder setApplicationContext(ApplicationContext applicationContext) {
        this.applicationContext = applicationContext;
        return this;
    }

    /**
     * Creates a new {@link FreemarkerRenderer} with the given configuration.
     *
     * @return A new Freemarker renderer.
     */
    public FreemarkerRenderer build() {
        final AttributeValueFreemarkerServlet attributeValueFreemarkerServlet = new AttributeValueFreemarkerServlet();
        
        try {
            attributeValueFreemarkerServlet.init(new InitParamsServletConfig(params, applicationContext));
        }
        catch (final ServletException servletException) {
            throw new FreemarkerRequestException("Cannot initialize internal servlet", servletException);
        }
        
        return new FreemarkerRenderer(attributeValueFreemarkerServlet);
    }

}
