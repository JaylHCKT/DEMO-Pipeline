package FBDIFileCompare;

import static org.junit.Assert.fail;

import org.junit.Test;

class compareTest {

	@Test
	void testComparerEGP() throws Exception {
		compare FC = new compare();		
		if(FC.comparer("./controlfiles/fin/egp/") == false) {
			fail("Difference in file found");
		}
	}
	
	@Test
	void testComparerGL() throws Exception {
		compare FC = new compare();	
		if(FC.comparer("./controlfiles/fin/gl/") == false) {
			fail("Difference in file found");
		}
	}

}
