package FBDIFileCompare;

import static org.junit.Assert.assertEquals;

import java.io.BufferedReader;
import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

@RunWith(Parameterized.class)
public class compareURLTest {
	
	String filename = "";
	String ver1 = "";
	String ver2 = "";
	Boolean expectedResult = true;
	static compareURL compareURL;
	
	@Before
	public void initialize() {
		compareURL = new compareURL();
	}
	
	public compareURLTest(String filename, String ver1, String ver2, Boolean expectedResult){
		this.filename = filename;
		this.ver1 = ver1;
		this.ver2 = ver2;
		this.expectedResult = expectedResult;
	}
		
	@Parameterized.Parameters(name = "{0}")
	public static Collection<Object[]> FileURLtoTest() throws Exception{
	  List<Object[]> data = new ArrayList<Object[]>();	  
	  List<String> filelist = new ArrayList<String>();
	  File f = new File("./controlfiles/controlfiles.txt");
	  String cl;
	  BufferedReader br = Files.newBufferedReader(f.toPath());
      while ((cl = br.readLine()) != null) {
      	filelist.add(cl);
      }
	  
	  int count = 2; 		
      while (filelist.size() > count) {
    	  //System.out.println(filelist.get(count));
    	  data.add(new Object[] {filelist.get(count),filelist.get(0),filelist.get(1),true});
    	  count++;
      }
	  return data;
	}
	
	@Test
	public void ControlFile() throws Exception {
		System.out.println("Comparing versions for "+filename+":\n");
		assertEquals(expectedResult, compareURL.comparer(filename,ver1,ver2));
	}
}
