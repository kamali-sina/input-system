#ifndef _INPUTSYS_HPP
#define _INPUTSYS_HPP

#include <vector>
#include <iostream>
#include <string>

class InputSystem {
    public:
    InputSystem();

    private:
    std::vector<std::string> history;
    std::string last_input;
};


#endif