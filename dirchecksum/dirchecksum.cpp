#include <iostream>
#include <filesystem>
#include <iomanip>
#include <sstream>
#include <string>
#include <vector>

#include <openssl/sha.h>
#include <shaf.hpp>

std::vector<std::string> files1;
std::string path1;

std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v);

void dir_iterator(std::string path, std::vector<std::string>& v);

int main(int argc, char const *argv[]){
    if (argc == 1){
        std::cout << "No arguments given." << std::endl;
        std::cout << "The following arguments are available:" << std::endl;
        std::cout << "-i | Describes the directory to compare checksums | Example: dircompare.exe -i path " << std::endl;
        exit(0);
    }

    for (size_t i = 1; i < argc; i++) {
        if (std::string(argv[i]) == "-i" && i+1 < argc){
            path1 = argv[i+1];
            i += 1;
        }
    }

    dir_iterator(path1, files1);

    // Tell user that the directory is empty, merely as a warning.
    if (files1.vector::empty()){
        std::cout << "The directory is empty" << std::endl;
        exit(0);
    }

    static unsigned char buffer[65];
    sha256("string", buffer);

    std::cout << buffer << std::endl;
    
    return 0;
}

std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v){
    for (size_t i = 0; i < v.size(); i++)
        os << v[i] << std::endl;
    return os;
}

void dir_iterator(std::string path, std::vector<std::string>& v){
    std::string newfile;
    std::string::size_type i;
    for (const auto & file : std::filesystem::directory_iterator(path)){
        newfile = file.path().u8string();
        i = newfile.find(path);
        if (i != std::string::npos)
            newfile.erase(i, path.length());

        v.push_back(newfile);
    }
}