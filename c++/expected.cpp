//Austin Derbique
//A01967241
//11/16/17
//Monad Assignment

#include "expected.hpp"
//#include "expected1.hpp"
#include <math.h>

  Expected<double> getRoot (double x){
  if (x < 0) return std::domain_error("negative root");
  else return sqrt(x);
  }

  std::pair <Expected<double>, Expected<double>> Solve(double a, double b, double c){
    auto det = getRoot(b*b - 4*a*c);
    return std::make_pair((-b + det)/(2*a),(-b - det)/(2*a));
  }