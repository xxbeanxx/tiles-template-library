package com.github.xxbeanxx.tiles.freemarker;

import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import freemarker.template.SimpleScalar;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

/**
 * @author gregory.j.baker
 */
public class MessagesModel extends AbstractModel implements TemplateHashModel {
	
	private final String bundleName;

	public MessagesModel(String bundleName) {
		this.bundleName = bundleName;
	}
	
	@Override
	public TemplateModel get(String key) throws TemplateModelException {
		final HttpServletRequest request = super.getRequest();
		final Locale locale = request.getLocale();
		final ResourceBundle resourceBundle = ResourceBundle.getBundle(bundleName, locale);
		return new SimpleScalar(resourceBundle.getString(key));
	}

	@Override
	public boolean isEmpty() throws TemplateModelException {
		throw new UnsupportedOperationException("isEmpty() is not implemented");
	}
	
}
