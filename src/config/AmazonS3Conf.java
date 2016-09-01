package config;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;

public class AmazonS3Conf {

	public static AmazonS3 getAmazonConn()
	{
		try {
			 String accessKey = "AKIAJ75GFWZOHENSZEFA";
		        String secretKey = "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";
		        
		       // String accessKey = "AKIAJMVWJJAFQHLCXUOQ";
		        //String secretKey = "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";
		        
		        AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		        
		        AmazonS3 conn = new AmazonS3Client(credentials);
		        return conn;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}

}
