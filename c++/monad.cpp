//Austin Derbique
//A01967241
//11/16/17
//Monad Assignment


E <double> getRoot (double x){
if (x < 0) return std::domain.error("negative root");
else return sqrt(x);
}

pair<E <double>, E <double>> Solve(double a, double b, double c){
auto det = getRoot(b*b - 4*a*c(;
return make_pair((-b + det)/(2*a),(-b - det)/(2*a));
}
