#include <iostream>
#include <chrono>

/*
  Problem 1: Multiples of 3 and 5
  
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
*/

// timing: 3521 ns

using namespace std;
int main()
{
  int t_repeat = 1000;
  auto t_start = chrono::high_resolution_clock::now();

  for (int _i = 0; _i < t_repeat; _i++)
  {
    int sum = 0;
    for (int i = 0; i < 1000; i++)
      if (i % 3 == 0 || i % 5 == 0)
        sum += i;
    cout << sum << endl;
  }

  auto t_end = chrono::high_resolution_clock::now();
  int64_t t_elapsed = chrono::duration_cast<chrono::nanoseconds>(t_end - t_start).count();
  cerr << "mean timing: " << t_elapsed / t_repeat << " ns \n";
}
