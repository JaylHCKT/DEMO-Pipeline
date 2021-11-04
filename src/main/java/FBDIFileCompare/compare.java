package FBDIFileCompare;

import java.io.BufferedReader;
import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

public class compare {
	public boolean comparer(String dir) throws Exception {
		int diff = 0;
		String[] filenames;
		List<String> difflist = new ArrayList<String>();
    	File f = new File(dir);
        // Populates the array with names of files and directories
        filenames = f.list();
        
        if(filenames.length%2 != 0) {
        	System.out.println("Invalid number of files to compare in " +dir+ " directory\n");
        	return false;
        }
        else {
        	for (int i=0; i < filenames.length; i+=2) {
                // Print the names of files and directories
                File firstFile = new File(dir+filenames[i]);
                File secondFile = new File(dir+filenames[i+1]);
                BufferedReader br1 = null;
                BufferedReader br2 = null;
                String sCurrentLine;
                List<String> list1 = new ArrayList<String>();
                List<String> list2 = new ArrayList<String>();
                br1 = Files.newBufferedReader(firstFile.toPath());
                br2 = Files.newBufferedReader(secondFile.toPath());
                while ((sCurrentLine = br1.readLine()) != null) {
                	if(sCurrentLine.length() >= 1) {
                		if(sCurrentLine.charAt(0) != '-') {  
                			list1.add(sCurrentLine.replaceAll("[(),]",""));
                		}
                	}         	
                }
                while ((sCurrentLine = br2.readLine()) != null) {
                	if(sCurrentLine.length() >= 1) {
                		if(sCurrentLine.charAt(0) != '-') {   
                			list2.add(sCurrentLine.replaceAll("[(),]",""));
                		}
                	}  
                }
                List<String> tmpList = new ArrayList<String>(list1);
                tmpList.removeAll(list2);
                if(tmpList.size() <= 0) {
                	System.out.println("No missing content from " + filenames[i]);
                }
                else {
                	System.out.println("Content from " +filenames[i]+ " missing in " +filenames[i+1]+ ":");
                    for(int j=0;j<tmpList.size();j++){
                        System.out.println(tmpList.get(j).replaceAll("\\s", "")); //content from first file which is not there		            
                    }
                    difflist.add(filenames[i]);
                    diff++;
                }

                System.out.println();
                tmpList = list2;
                tmpList.removeAll(list1);
                if(tmpList.size() <= 0) {
                	System.out.println("No missing content from " + filenames[i+1]);
                }
                else {
                    System.out.println("Content from " +filenames[i+1]+ " missing in " +filenames[i]+ ":");
                    for(int j=0;j<tmpList.size();j++){
                        System.out.println(tmpList.get(j).replaceAll("\\s", "")); //content from second file which is not there
                    }
                    difflist.add(filenames[i+1]);
                    diff++;
                }
                System.out.println();
            }
        }
        if(diff == 0) {
        	System.out.println("No changes found in " +dir+ " directory\n");
        	return true;
        }
        else {
        	System.out.println(diff +" failure(s) found in " +dir+ " directory, changes found in control files:");
        	for(String difffile : difflist){
        		System.out.println(difffile);
        	}
        	System.out.println();
        	return false;
        } 
	}
}

