package com.github.xxbeanxx.tiles.spring;

import org.apache.tiles.AttributeContext;
import org.apache.tiles.TilesException;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;
import org.springframework.beans.BeansException;
import org.springframework.web.context.WebApplicationContext;

/**
 * @author Greg Baker
 */
public class PreparerFactory extends AbstractSpringPreparerFactory {

	private static final ViewPreparer DEFAULT_PREPARER = new ViewPreparer() {
		
		@Override
		public void execute(Request tilesContext, AttributeContext attributeContext) { /* intentionally left blank */ }
		
	};
	
	@Override
	protected ViewPreparer getPreparer(String name, WebApplicationContext context) throws TilesException {
		try {
			return context.getBean(name, ViewPreparer.class);
		}
		catch (final BeansException beansException) {
			return DEFAULT_PREPARER;
		}
	}
	
}
