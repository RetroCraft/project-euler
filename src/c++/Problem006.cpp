#include <iostream>
#include <chrono>
#include <cmath>

/*
  Problem 6: Sum square difference

  The sum of the squares of the first ten natural numbers is,
  1^2 + 2^2 + ... + 10^2 = 385

  The square of the sum of the first ten natural numbers is,
  (1 + 2 + ... + 10)^2 = 55^2 = 3025

  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/

// timing: 42311 ns

using namespace std;
int main()
{
  int t_repeat = 1000;
  auto t_start = chrono::high_resolution_clock::now();

  for (int _i = 0; _i < t_repeat; _i++)
  {
    int sumOfSquares = 0;
    int squareOfSum = 0;

    for (int i = 1; i <= 100; i++)
    {
      sumOfSquares += i * i;
      squareOfSum += i;
    }

    cout << squareOfSum * squareOfSum - sumOfSquares << endl;
  }

  auto t_end = chrono::high_resolution_clock::now();
  int64_t t_elapsed = chrono::duration_cast<chrono::nanoseconds>(t_end - t_start).count();
  cerr << "mean timing: " << t_elapsed / t_repeat << " ns \n";
}
