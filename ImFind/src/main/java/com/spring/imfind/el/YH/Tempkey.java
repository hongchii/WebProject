<<<<<<< HEAD
package com.spring.imfind.el.YH;

import java.util.Random;

public class Tempkey {
	private boolean lowerCheck;
    private int size;
	    
    public String getKey(int size, boolean lowerCheck) {
        this.size = size;
        this.lowerCheck = lowerCheck;
        return init();
    }
    public int getNumCode() {
		return initNum();	
    }
    
    private int initNum() {
    	Random r = new Random(); 
		int num = r.nextInt(999999);
    	return num;
    }
    private String init() {
    	
        Random ran = new Random();
        StringBuffer sb = new StringBuffer();
        int num = 0;
        
        do {
            num = ran.nextInt(75)+48;
            if((num>=48 && num<=57) || (num>=65 && num<=90) || (num>=97 && num<=122)) {
                sb.append((char)num);
            }else {
                continue;
            }
        } while (sb.length() < size);
        if(lowerCheck) {
            return sb.toString().toLowerCase();
        }
        return sb.toString();
    }
}

=======
package com.spring.imfind.el.YH;

import java.util.Random;

public class Tempkey {
	private boolean lowerCheck;
    private int size;
	    
    public String getKey(int size, boolean lowerCheck) {
        this.size = size;
        this.lowerCheck = lowerCheck;
        return init();
    }
    public int getNumCode() {
		return initNum();	
    }
    
    private int initNum() {
    	Random r = new Random(); 
		int num = r.nextInt(999999);
    	return num;
    }
    private String init() {
    	
        Random ran = new Random();
        StringBuffer sb = new StringBuffer();
        int num = 0;
        
        do {
            num = ran.nextInt(75)+48;
            if((num>=48 && num<=57) || (num>=65 && num<=90) || (num>=97 && num<=122)) {
                sb.append((char)num);
            }else {
                continue;
            }
        } while (sb.length() < size);
        if(lowerCheck) {
            return sb.toString().toLowerCase();
        }
        return sb.toString();
    }
}

>>>>>>> ad770e57f7ddccdc6c80599f62592e4f58550ddd
