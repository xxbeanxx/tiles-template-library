package com.github.xxbeanxx.tiles.freemarker;

import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import freemarker.core.Environment;
import freemarker.ext.servlet.FreemarkerServlet;
import freemarker.ext.servlet.HttpRequestHashModel;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

/**
 * @author gregory.j.baker
 */
public class MessagesModel implements TemplateHashModel {
	
	private final String bundleName;

	public MessagesModel(String bundleName) {
		this.bundleName = bundleName;
	}
	
	@Override
	public TemplateModel get(String key) throws TemplateModelException {
		final TemplateModel requestModel = getRequestModel();
		
		if(requestModel instanceof HttpRequestHashModel) {
			final HttpRequestHashModel httpRequestHashModel = (HttpRequestHashModel) requestModel;
			final HttpServletRequest httpServletRequest = httpRequestHashModel.getRequest();
			final Locale locale = httpServletRequest.getLocale();
			final ResourceBundle resourceBundle = ResourceBundle.getBundle(bundleName, locale);
			return new SimpleScalar(resourceBundle.getString(key));
		}
		else  {
			throw new TemplateModelException("Could not find an instance of " + HttpRequestHashModel.class.getName() + " in the data model under either the name " + FreemarkerServlet.KEY_REQUEST_PRIVATE + " or " + FreemarkerServlet.KEY_REQUEST);
		}
	}

	private TemplateModel getRequestModel() throws TemplateModelException {
		final Environment environment = Environment.getCurrentEnvironment();
		final TemplateModel requestModel = environment.getGlobalVariable(FreemarkerServlet.KEY_REQUEST_PRIVATE);
		
		if(requestModel instanceof HttpRequestHashModel) {
			return requestModel;
		}
		else {
			return environment.getGlobalVariable(FreemarkerServlet.KEY_REQUEST);
		}
	}

	@Override
	public boolean isEmpty() throws TemplateModelException {
		throw new UnsupportedOperationException("isEmpty() is not implemented");
	}
	
}
