package com.github.xxbeanxx.tiles.freemarker;

import javax.servlet.http.HttpServletRequest;

import freemarker.template.TemplateModelException;
import freemarker.template.TemplateScalarModel;

/**
 * @author gregory.j.baker
 */
public class ContextPathModel extends AbstractModel implements TemplateScalarModel {
	
	@Override
	public String getAsString() throws TemplateModelException {
		HttpServletRequest request = super.getRequest();
		return request.getContextPath();
	}
	
}
