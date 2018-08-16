#include <iostream>
#include <chrono>
#include <algorithm>
#include <string>

/*
  Problem 4: Largest palindrome product

  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
*/

// timing: 78487490 ns

using namespace std;
int main()
{
  int t_repeat = 10;
  auto t_start = chrono::high_resolution_clock::now();

  for (int _i = 0; _i < t_repeat; _i++)
  {
    int max = 0;
    for (int i = 100; i < 1000; i++)
      for (int j = 100; j < i + 1; j++)
      {
        int k = i * j;
        string product = to_string(k);
        string reverse = product;
        std::reverse(reverse.begin(), reverse.end());
        if (product == reverse && k > max)
          max = k;
      }
    cout << max << endl;
  }

  auto t_end = chrono::high_resolution_clock::now();
  int64_t t_elapsed = chrono::duration_cast<chrono::nanoseconds>(t_end - t_start).count();
  cerr << "mean timing: " << t_elapsed / t_repeat << " ns \n";
}
