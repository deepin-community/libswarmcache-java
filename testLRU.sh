#!/bin/sh
java -Dorg.apache.commons.logging.simplelog.defaultlog=debug -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.SimpleLog -cp lib/commons-collections.jar:lib/commons-logging.jar:lib/jgroups-all.jar:classes net.sf.swarmcache.CacheTest 239.1.1.1 LRU 500
