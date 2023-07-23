#include <sstream>
#include <iostream>

int main()
{
    std::stringstream msg;
    msg << "Hello! I'm Mushi";
    std::cout << msg.str() << "\n";

    return 0;
}
