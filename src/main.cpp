#include <iostream>
#include <clocale>
#include <vector>
#include <string>
#include <filesystem>

std::vector<std::string> files;
std::vector<std::string> files2;
std::string newfile;
std::string path;
std::string path2;
std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v);

// Udvidelse til funktionskald af iterator
// void dir_iterator(std::string path, )

// Forbedring: Angiv hvad alle filer skal indeholde

int main(){
    std::cout << "This program can compare two directories, simply state them and the program will tell you which files were in both directories." << std::endl << std::endl;
    std::cout << "State first path: ";
    std::cin >> path;

    std::cout << "State second path: ";
    std::cin >> path2;

    for (const auto & file : std::filesystem::directory_iterator(path)){
        newfile = file.path().u8string();

        std::string::size_type i = newfile.find(path);

        if (i != std::string::npos)
            newfile.erase(i, path.length());
        
        newfile.erase(remove(newfile.begin(), newfile.end(), '\\'), newfile.end());

        files.push_back(newfile);
    }
    
    for (const auto & file : std::filesystem::directory_iterator(path2)){
        newfile = file.path().u8string();

        std::string::size_type i = newfile.find(path2);

        if (i != std::string::npos)
            newfile.erase(i, path2.length());
        
        newfile.erase(remove(newfile.begin(), newfile.end(), '\\'), newfile.end());

        files2.push_back(newfile);
    }

    // Tell user that one of the directories is empty, merely as a warning.
    if (files.vector::empty() || files2.vector::empty()){
        std::cout << "One of the directories is empty";
        exit(0);
    }

    else{
        std::cout << std::endl << "The two directories contain the same following files:" << std::endl;
        for (size_t i = 0; i < files.size(); i++){
            for (size_t j = 0; j < files2.size(); j++){
                if (files[i] == files2[j]){
                    std::cout << "   " << files[i] << std::endl;
                }
            }
        }
    }

    system("pause");
    return 0;
}

std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v){
    for (size_t i = 0; i < v.size(); i++)
        os << v[i] << std::endl;
    return os;
}