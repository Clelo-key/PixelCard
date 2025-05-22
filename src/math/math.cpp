#include <iostream>
#include "./math.h"

Math::Math() {
	std::cout << "New" << std::endl; 
}

Math::~Math() {
	std::cout << "~New" << std::endl; 
}

void Math::getCircleArea(int &r) {
  std::cout << r*r*3.14 << std::endl;
}