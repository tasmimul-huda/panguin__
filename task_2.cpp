#include <iostream>

using namespace std;

int trip = 0;
int efficientJanitor(float weight[], int n)
{
   for (int i=0; i<n; i++){
        if((weight[i] + weight[i+1]) <= 3.0){
            trip ++;
            i = i+1;
        }
        else if(weight[i] <= 3.0)
        {
            trip++;
        }
    }
    return trip;
}
int main()
{
    int n;
    cin>>n;

    float weight[n];

    for (int i=0; i<n; i++){
        cin>> weight[i];
    }
    trip = efficientJanitor(weight, n);
    cout<<"\n"<<trip;
    return 0;
}
