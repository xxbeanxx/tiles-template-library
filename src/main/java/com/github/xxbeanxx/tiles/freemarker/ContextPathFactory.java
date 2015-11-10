package com.github.xxbeanxx.tiles.freemarker;

import org.apache.tiles.request.freemarker.servlet.SharedVariableFactory;

import freemarker.template.TemplateModel;

/**
 * @author gregory.j.baker
 */
public class ContextPathFactory implements SharedVariableFactory {

	@Override
	public TemplateModel create() {
		return new ContextPathModel();
	}
	
}
