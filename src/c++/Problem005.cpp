#include <iostream>
#include <chrono>
#include <numeric>

/*
  Problem 5: Smallest multiple

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/

// timing: 38002 ns

using namespace std;
int main()
{
  int t_repeat = 1000;
  auto t_start = chrono::high_resolution_clock::now();

  for (int _i = 0; _i < t_repeat; _i++)
  {
    int out = 1;
    for (int i = 2; i <= 20; i++)
      out = lcm(out, i);
    cout << out << endl;
  }

  auto t_end = chrono::high_resolution_clock::now();
  int64_t t_elapsed = chrono::duration_cast<chrono::nanoseconds>(t_end - t_start).count();
  cerr << "mean timing: " << t_elapsed / t_repeat << " ns \n";
}
