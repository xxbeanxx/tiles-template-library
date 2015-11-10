package com.github.xxbeanxx.tiles.freemarker;

import org.apache.tiles.request.freemarker.servlet.SharedVariableFactory;

import freemarker.template.TemplateModel;

/**
 * @author gregory.j.baker
 */
public class MessagesFactory implements SharedVariableFactory {

	/**
	 * TODO can this be configurable?
	 */
	private static final String BUNDLE_NAME = "gcwu-fegc";
	
	@Override
	public TemplateModel create() {
		return new MessagesModel(BUNDLE_NAME);
	}
	
}
