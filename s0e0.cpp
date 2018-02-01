// Yash Krishan Verma
// yash.krishan.verma@gmail.com

// A rudimentary C++ code for lexical analysis.

#include<bits/stdc++.h>

using namespace std;

typedef long long ll;
  map<string,ll> mp;

int checkConstant(string s ,int st, int end)
{

   int res=-1,i;
  for( i=st;i<end;i++)
  {
  if(!(s[i]==46 ||(s[i]>=48 && s[i]<=57)))
  break;
  
  
  
  }
  
  if(i==st)
  return -1;
  else
  return i;
  


}

bool isoperand(char x)
{
   return ((x=='=')||(x=='-')||(x=='+')||(x=='*')||(x=='/')||(x=='%')|| (x=='(')||(x==')'));

}

string checkOperand(char x)
{
  string s="";
  
  if(x=='=')
  s+="Assignment";
  else if(x=='-')
  s+="Subtraction";
  else if(x=='+')
  s+="Addition";
  else if(x=='*')
  s+="Multiplication";
  else if(x=='/')
  s+="Division";
  else if(x=='%')
  s+="Modulus";
  else if(x=='(')
  s+="Bracket Open";
  else if(x==')')
  s+="Bracket Close";
  s+="Operator";
  
  return s;


}



int main(int argc, char* argv[])
{ 
  string exp;
  cout<<"Input expression"<<endl;
  cin>>exp;
  
  int f=exp.size();
  int identi=1;
  
  for(int i=0;i<f;i++)
  {
  
       if(exp[i]==' ')
       continue;
    else if(exp[i]==46 ||(exp[i]>=48 && exp[i]<=57))
       {
         string stri="";
         stri+=exp[i];
         bool flag=(exp[i]==46);
         int j;
         for(j=i+1;j<f;j++)
         {
          if(!(exp[j]==46 ||(exp[j]>=48 && exp[j]<=57)))
           break;
          flag= flag|(exp[j]==46);
         stri+=exp[j];
         }
         if(flag)
          cout<<"<Floating Const,"<<stri<<">"<<" "<<endl;
          else
           cout<<"<Const,"<<stri<<">"<<" ";
         i=j-1;
       }
       else if(isoperand(exp[i]))
       {
          cout<<"<"<<checkOperand(exp[i])<<">"<<" "<<endl;
       
       }
       
       else
       {
        string stri="";
        stri+=exp[i];
        int j;
        for( j=i+1;j<f;j++)
        {
           if(isoperand(exp[j]))
           break;
           if(exp[j]==' ')
           break;
           stri+=exp[j];
        
        }
        if(mp[stri]==0)
        {mp[stri]=identi;
        identi++;
        }
        cout<<"<identifier,"<<mp[stri]<<">"<<" "<<endl;
        i=j-1;
       
       }
  
  }

  

}

