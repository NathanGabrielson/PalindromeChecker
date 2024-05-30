public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String rev = reverse(simplify(word));
  String fixedWord = simplify(word);
  for (int i = 0; i < fixedWord.length(); i++) {
    if (rev.charAt(i) != fixedWord.charAt(i)) {
      return false;
    }
  }
  return true;
}

public String simplify(String str) {
  String sNew = "";
  for (int i = 0; i < str.length(); i++) {
    char temp = str.charAt(i);
    if (Character.isAlphabetic(temp)) {
      sNew += temp;
    }
  }
  
  return sNew.toLowerCase();
}

public String reverse(String str)
{
    String sNew = new String();
    
    for (int i = str.length(); i > 0; i--) {
      sNew += str.charAt(i-1);
    }
    
    return sNew;
}
