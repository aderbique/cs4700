//#define max(a,b) a < b ? b : a

//max(x,y)
//x < y ? y : a

#ifndef EXPECTED_HPP
#define EXPECTED_HPP

#include <iostream>
#include <stdexcept>
#include <functional>
#include <exception>
#include <stdio.h>

template<typename T>
	class Expected{
		public:
			Expected(T t) : state({.t=t}),valid(true){}

			Expected(std::exception_ptr e) : state({.e=e}),valid(false){}

			Expected(std::exception e) : state({.e=std::make_exception_ptr(e)}),valid(false){}

			T value() const{
				if(valid) return state.t;
				std::rethrow_exception(state.e);
			}

			operator T(){
				return value();
			}

			template<typename U>
			Expected<U> apply(std::function<U (T)> f){
				if(!valid) return state.e;
				try{
				  return f(state.t);
				}
				catch(...){
					return std::current_exception();
				}
			}

		//private:
			struct{
				T t;
				std::exception_ptr e;
			} state;
			bool valid;

};
//#endif

#define MixedMode(func, op)					\
template<typename T, typename U>			\
auto func(Expected <T> t,U u){				\
  std::function<U(T)> fn = [u](T t){return op;};	\
  return t.apply(fn);					\
}							\
							\
template<typename T, typename U>			\
auto func(T t, Expected<U> u){				\
  std::function<T(U)> fn = [t](U u){return op;};	\
  return u.apply(fn);					\
}							\
//#endif

MixedMode(operator+, t+u);
MixedMode(operator-, t-u);
MixedMode(operator/, t/u);
MixedMode(operator*, t*u);
MixedMode(operator%, t%u);
MixedMode(operator<, t<u);
MixedMode(operator>, t>u);
MixedMode(operator<=, t<=u);
MixedMode(operator>=, t>=u);
MixedMode(operator==, t==u);
MixedMode(operator!=, t!=u);

#endif

/*
#define mm(op) \
auto op(...){
	apply([]()(op(a,b)));
}


auto op(...){
	apply([]()(operator+(a,b)));
}
*/
