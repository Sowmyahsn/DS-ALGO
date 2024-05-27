package dstestcases;

import org.testng.annotations.Test;

import dsalgo_utilities.LoggerLoad;

public class LoggerTest {

	@Test
	
	public void tst01_TestingLog() {
		LoggerLoad.info("<-------Testing Info-------->");

		LoggerLoad.warn("<-------Testing Warn------->");

		LoggerLoad.error("<-------Testing Error------->");
	}

}
