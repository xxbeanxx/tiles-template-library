package com.github.xxbeanxx.tiles.freemarker;

import javax.servlet.http.HttpServletRequest;

import freemarker.core.Environment;
import freemarker.ext.servlet.FreemarkerServlet;
import freemarker.ext.servlet.HttpRequestHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

/**
 * @author gregory.j.baker
 */
public class AbstractModel {

	protected HttpServletRequest getRequest() throws TemplateModelException {
		final TemplateModel requestModel = getRequestModel();
		if(requestModel instanceof HttpRequestHashModel) {
			return ((HttpRequestHashModel) requestModel).getRequest();
		}
		else {
			throw new TemplateModelException("Could not find an instance of " + HttpRequestHashModel.class.getName() + " in the data model under either the name " + FreemarkerServlet.KEY_REQUEST_PRIVATE + " or " + FreemarkerServlet.KEY_REQUEST);
		}
	}
	
	protected TemplateModel getRequestModel() throws TemplateModelException {
		final Environment environment = Environment.getCurrentEnvironment();
		final TemplateModel requestModel = environment.getGlobalVariable(FreemarkerServlet.KEY_REQUEST_PRIVATE);
		
		if(requestModel instanceof HttpRequestHashModel) {
			return requestModel;
		}
		else {
			return environment.getGlobalVariable(FreemarkerServlet.KEY_REQUEST);
		}
	}

}