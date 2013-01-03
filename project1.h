#ifndef PROJECT1_H_
#define PROJECT1_H_

#include <iostream> // IO access

using namespace std;

class Project1 {

public:
	// why only detected if implemented here?
	// void foo(int &i) {
	// 	i = 1;
	// }
	void foo(int &i);

};

void independentMethod(int &i) {
	// Should be implemented in the .h, not the .cpp.
	// Otherwise, test can't find independentMethod
	i = 0;
}

#endif /* PROJECT1_H_ */