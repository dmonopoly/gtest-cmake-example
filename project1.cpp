#include <iostream>
#include "project1.h"

void Project1::foo(int &i) {
	i = 1;
}

int main() {
	cout << "do stuff" << endl;
	int x = 4;
	cout << x << endl;
	independentMethod(x);
	cout << x << endl;
	Project1 p;
	p.foo(x);
	cout << x << endl;
}