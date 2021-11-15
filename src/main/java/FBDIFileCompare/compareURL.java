package FBDIFileCompare;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class compareURL {
	
	public boolean comparer(String filename, String ver1, String ver2) throws Exception {
		final Logger LOGGER = 
                Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
		String orcURL = "https://www.oracle.com/webfolder/technetwork/docs/fbdi-";
		String FBDIdir = "/fbdi/controlfiles/";
		int diff = 0;
		
		URL url1 = new URL(orcURL+ver1+FBDIdir+filename);
		URL url2 = new URL(orcURL+ver2+FBDIdir+filename);
		BufferedReader br1 = new BufferedReader(
	    		new InputStreamReader(url1.openStream()));
	    BufferedReader br2 = new BufferedReader(
	            new InputStreamReader(url2.openStream()));
	
	    String sCurrentLine;
	    List<String> list1 = new ArrayList<String>();
	    List<String> list2 = new ArrayList<String>();
	    while ((sCurrentLine = br1.readLine()) != null) {
	    	//System.out.println(sCurrentLine);
	    	if(sCurrentLine.length() >= 1) {
	    		if(sCurrentLine.charAt(0) != '-') {  
	    			list1.add(sCurrentLine.replaceAll("[(),]",""));
	    		}
	    	}
	    }
	    br1.close();
	    
	    while ((sCurrentLine = br2.readLine()) != null) {
	    	//System.out.println(sCurrentLine);
	    	if(sCurrentLine.length() >= 1) {
	    		if(sCurrentLine.charAt(0) != '-') {  
	    			list2.add(sCurrentLine.replaceAll("[(),]",""));
	    		}
	    	}  
	    }
	    br2.close();
	    
	    List<String> tmpList = new ArrayList<String>(list1);
	    tmpList.removeAll(list2);
	    if(tmpList.size() <= 0) {
	    	System.out.println("No missing content from " + filename + " " + ver1);
	    }
	    else {
	    	System.out.println("Content from " +filename+ " "+ver1+ " changed/missing in " + ver2 + ":");
	        for(int j=0;j<tmpList.size();j++){
	            System.out.println(tmpList.get(j)); //content from first file which is not there		            
	        }
	        diff++;
	    }
	
	    System.out.println();
	    tmpList = list2;
	    tmpList.removeAll(list1);
	    if(tmpList.size() <= 0) {
	    	System.out.println("No missing content from " + filename + " " + ver2);
	    }
	    else {
	        System.out.println("Content from " +filename+ " "+ver2+ " changed/missing in " + ver1 + ":");
	        for(int j=0;j<tmpList.size();j++){
	            System.out.println(tmpList.get(j)); //content from second file which is not there
	        }
	        diff++;
	    }
	    
	    
	    if(diff == 0) {
	    	System.out.println("\nNo changes found in "+filename+" versions "+ver1+" or " +ver2+ ":");
	    	LOGGER.log(Level.INFO, filename+" v."+ver1+" - "+url1.toString());
	    	LOGGER.log(Level.INFO, filename+" v."+ver2+" - "+url2.toString());
	    	return true;
	    }
	    else {
	    	System.out.println("\n"+diff +" file(s) failed, changes found in: ");
	    	LOGGER.log(Level.INFO, filename+" v."+ver1+" - "+url1.toString());
	    	LOGGER.log(Level.INFO, filename+" v."+ver2+" - "+url2.toString());
	    	return false;
	    }
	}
}
