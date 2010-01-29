#include <iostream>

#include "AnObject.h"
#include "AnotherObject.h"

int main()
{
	AnObject o;
	AnotherObject o2;
	o.foo();
	o2.foo();
	std::cout << "HELLO, WORLD!" << std::endl;
	return 0;
}
