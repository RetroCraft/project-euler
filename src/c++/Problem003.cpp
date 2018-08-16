#include <iostream>
#include <chrono>
#include <math.h>

/*
  Problem 3: Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143?
*/

// timing: 19481 ns

using namespace std;
int main()
{
  int t_repeat = 1000;
  auto t_start = chrono::high_resolution_clock::now();

  for (int _i = 0; _i < t_repeat; _i++)
  {
    long n = 600851475143;
    for (int i = 2; i <= sqrtl(n); i++)
      while (n % i == 0)
        n /= i;
    cout << n << endl;
  }

  auto t_end = chrono::high_resolution_clock::now();
  int64_t t_elapsed = chrono::duration_cast<chrono::nanoseconds>(t_end - t_start).count();
  cerr << "mean timing: " << t_elapsed / t_repeat << " ns \n";
}
