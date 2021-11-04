package FBDIFileCompare;

import static org.junit.Assert.fail;

import org.junit.Test;

public class compareTest {

	@Test
	public void testComparerEGP() throws Exception {
		compare FC = new compare();		
		if(FC.comparer("./controlfiles/fin/egp/") == false) {
			fail("Difference in file found");
		}
	}
	
	@Test
	public void testComparerGL() throws Exception {
		compare FC = new compare();	
		if(FC.comparer("./controlfiles/fin/gl/") == false) {
			fail("Difference in file found");
		}
	}

}