SETs
i /1*3/
j /1*3/

positive variable lam(i);
binary variable y(i);
variable x2;
variable z;

equations
customer
cons1
cons2
cons3
cons4
cons5
cons6
cons7
cons8
cons9
cons10
;

customer.. z=e=385/4*lam("1")+15/4*y("1")-3/4*lam("2")+9/2*y("2")+9/2*lam("3")+3*x2;
cons1.. -1/2*lam("1")+1/2*y("1")-3/2*lam("2")+2*y("2")-2*lam("3")+4*y("3")+x2=l=7;
cons2.. -1/2*lam("1")+1/2*y("1")-3/2*lam("2")+2*y("2")-2*lam("3")+4*y("3")=l=4;
cons3.. -1/2*lam("1")+1/2*y("1")-3/2*lam("2")+2*y("2")-2*lam("3")+4*y("3")=g=0;
cons4.. sum(i,y(i))=e=1;
cons5.. x2=g=0;
cons6.. x2=l=5;
cons7.. lam("1")=l=y("1");
cons8.. lam("2")=l=y("2");
cons9.. lam("3")=l=y("3");
cons10.. lam("1")=l=1;
model Untitled_7 /all/

solve Untitled_7 using mip maximizing z;

display x2.l,y.l,lam.l,z.l;
