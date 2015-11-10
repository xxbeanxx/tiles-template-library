package com.github.xxbeanxx.tiles.freemarker;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import freemarker.template.SimpleScalar;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

/**
 * @author gregory.j.baker
 */
public class LocaleInfoModel extends AbstractModel implements TemplateHashModel {

	@Override
	public TemplateModel get(String key) throws TemplateModelException {
		final HttpServletRequest request = super.getRequest();
		final Locale locale = request.getLocale();
		
		if ("iso3language".equals(key)) {
			return new SimpleScalar(locale.getISO3Language());
		}
		
		if ("language".equals(key)) {
			return new SimpleScalar(locale.getLanguage());
		}

		return null;
	}

	@Override
	public boolean isEmpty() throws TemplateModelException {
		return false;
	}

}
