package net.sf.swarmcache;

import java.io.Serializable;

/**
 * Generic caching mechanism.
 *
 * @author John Watkinson
 */
public interface ObjectCache {

	/**
	 * Gets the common name of the type of objects to cache.
	 */
	public String getType();

	/**
	 * Sets the common name of the type of objects to cache.
	 */
	public void setType(String type);

	/**
	 * Adds an object to the cache.
	 */
	public void put(Serializable key,
	                Object object);

	/**
	 * Gets an object from the cache by key, or returns null if that object is
	 * not cached.
	 */
	public Object get(Serializable key);

	/**
	 * Clears an object from the cache by key.
	 */
	public Object clear(Serializable key);

	/**
	 * Clears the entire cache.
	 */
	public void clearAll();
}