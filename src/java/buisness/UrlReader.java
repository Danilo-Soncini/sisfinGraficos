/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package buisness;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

/**
 *
 * @author dell-soncini
 */

public class UrlReader
{
  public static String getURL(String urlString) 
  {
    try{
    // create the url
    URL url = new URL(urlString);
    
    // open the url stream, wrap it an a few "readers"
    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));

    // write the output to stdout
    String output = "";
    String line;
    while ((line = reader.readLine()) != null)
    {
      output = output + line;
    }
    reader.close();

    return output;
    }
    catch(Exception  e)
    {
    }
    
    return "";
    // close our reader
  }
}