package FBDIFileCompare;

import static org.junit.Assert.fail;

import org.junit.Test;

public class compareTest {

	@Test
	public void testEGP() throws Exception {
		compare FC = new compare();		
		if(FC.comparer("./controlfiles/scm/egp/") == false) {
			fail("Difference in file found");
		}
	}
	
	@Test
	public void testGL() throws Exception {
		compare FC = new compare();	
		if(FC.comparer("./controlfiles/fin/gl/") == false) {
			fail("Difference in file found");
		}
	}
	
	@Test
	public void testPCTL() throws Exception {
		compare FC = new compare();	
		if(FC.comparer("./controlfiles/ppm/pctl/") == false) {
			fail("Difference in file found");
		}
	}
	
	@Test
	public void testPCST() throws Exception {
		compare FC = new compare();	
		if(FC.comparer("./controlfiles/ppm/pcst/") == false) {
			fail("Difference in file found");
		}
	}

}
