package FBDIFileCompare;

import static org.junit.Assert.*;
import java.util.Arrays;
import java.util.Collection;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

@RunWith(Parameterized.class)
public class compareURLTest {
	
	String filename = "";
	static String ver1 = "21a";
	static String ver2 = "21d";
	Boolean expectedResult = true;
	compareURL compareURL;
	
	@Before
	public void initialize() {
		compareURL = new compareURL();
	}
	
	public compareURLTest(String filename, String ver1, String ver2, Boolean expectedResult){
		this.filename = filename;
		compareURLTest.ver1 = ver1;
		compareURLTest.ver2 = ver2;
		this.expectedResult = expectedResult;
	}
	
	@Parameterized.Parameters
	public static Collection FileURLtoTest() throws Exception{
		return Arrays.asList(new Object[][] {
			{"PoHeadersInterfaceBlanket.ctl",ver1,ver2,true},
			{"FaLeasesINT.ctl",ver1,ver2,true},
			{"FaLeaseBooksINT.ctl",ver1,ver2,true},
			{"FaLeaseSchINT.ctl",ver1,ver2,true},
			{"FaLeaseScheduleItemsINT.ctl",ver1,ver2,true},
			{"FaMassAdditions.ctl",ver1,ver2,true},
			{"FaMassaddDistributions.ctl",ver1,ver2,true},
			{"FaMcMassRates.ctl",ver1,ver2,true}
			});
	}
	
	@Test
	public void testcompareURL() throws Exception {
		System.out.println("Comparing versions for "+filename+":\n");
		assertEquals(expectedResult, compareURL.comparer(filename,ver1,ver2));
	}
}
