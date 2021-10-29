package FBDIFileCompare;

import java.io.BufferedReader;
import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

public class compare {
	public void comparer() throws Exception {
		String[] filenames;
    	String dir = "./src/main/resources/files/";
    	File f = new File(dir);
        // Populates the array with names of files and directories
        filenames = f.list();

    	File firstFile = new File(dir+filenames[0]);
        File secondFile = new File(dir+filenames[1]);
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
        			if (sCurrentLine.charAt(0) == '(' && sCurrentLine.length() > 1) {
        				list1.add(sCurrentLine.substring(1, sCurrentLine.length()-1));
        			}
        			else {
        				if(sCurrentLine.charAt(sCurrentLine.length()-1) == ',' || 
            					sCurrentLine.charAt(sCurrentLine.length()-1) == ')'){
            				list1.add(sCurrentLine.substring(0, sCurrentLine.length()-1));
            			}
        				else {
        					list1.add(sCurrentLine);
        				}
        			}
        		}
        	}         	
        }
        while ((sCurrentLine = br2.readLine()) != null) {
        	if(sCurrentLine.length() >= 1) {
        		if(sCurrentLine.charAt(0) != '-') {            			
        			if (sCurrentLine.charAt(0) == '(' && sCurrentLine.length() > 1) {
        				list2.add(sCurrentLine.substring(1, sCurrentLine.length()-1));
        			}
        			else {
        				if(sCurrentLine.charAt(sCurrentLine.length()-1) == ',' || 
            					sCurrentLine.charAt(sCurrentLine.length()-1) == ')'){
            				list2.add(sCurrentLine.substring(0, sCurrentLine.length()-1));
            			}
        				else {
        					list2.add(sCurrentLine);
        				}
        			}
        		}
        	}  
        }
        List<String> tmpList = new ArrayList<String>(list1);
        tmpList.removeAll(list2);
        if(tmpList.size() <= 0) {
        	System.out.println("No missing content from first file");
        }
        else {
        	System.out.println("Content from first file missing in second file:");
            for(int i=0;i<tmpList.size();i++){
                System.out.println(tmpList.get(i)); //content from first file which is not there		            
            }
        }

        System.out.println();
        tmpList = list2;
        tmpList.removeAll(list1);
        if(tmpList.size() <= 0) {
        	System.out.println("No missing content from second file");
        }
        else {
            System.out.println("Content from second file missing in first file:");
            for(int i=0;i<tmpList.size();i++){
                System.out.println(tmpList.get(i)); //content from second file which is not there
            }
        }
        
        return;
	}
}

