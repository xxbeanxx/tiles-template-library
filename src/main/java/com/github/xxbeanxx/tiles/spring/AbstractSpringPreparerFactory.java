package com.github.xxbeanxx.tiles.spring;

import org.apache.tiles.TilesException;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.preparer.factory.PreparerFactory;
import org.apache.tiles.request.Request;
import org.springframework.web.context.WebApplicationContext;

/**
 * Abstract implementation of the Tiles3 {@link org.apache.tiles.preparer.PreparerFactory}
 * interface, obtaining the current Spring WebApplicationContext and delegating to
 * {@link #getPreparer(String, org.springframework.web.context.WebApplicationContext)}.
 *
 * @author Juergen Hoeller
 * @since 3.2
 * @see #getPreparer(String, org.springframework.web.context.WebApplicationContext)
 * @see SimpleSpringPreparerFactory
 * @see SpringBeanPreparerFactory
 */
public abstract class AbstractSpringPreparerFactory implements PreparerFactory {

	@Override
	public ViewPreparer getPreparer(String name, Request context) {
		final WebApplicationContext webApplicationContext = (WebApplicationContext) context.getContext("application").get(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);

		if (webApplicationContext == null) {
			throw new IllegalStateException("No WebApplicationContext found: no ContextLoaderListener registered?");
		}

		return getPreparer(name, webApplicationContext);
	}

	/**
	 * Obtain a preparer instance for the given preparer name,
	 * based on the given Spring WebApplicationContext.
	 * @param name the name of the preparer
	 * @param context the current Spring WebApplicationContext
	 * @return the preparer instance
	 * @throws TilesException in case of failure
	 */
	protected abstract ViewPreparer getPreparer(String name, WebApplicationContext context) throws TilesException;

}
