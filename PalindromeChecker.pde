public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(process(lines[i]))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (word.equals(reverse(word)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i=str.length()-1; i>=0; i--)
    sNew = sNew + str.substring(i,i+1);
    return sNew;
}

public String process(String org) {
  String temp = new String();
  for (int i=0; i<org.length(); i++)
    if (Character.isLetter(org.charAt(i)))
      temp = temp + org.substring(i,i+1);
  temp = temp.toLowerCase();
  return temp;
}