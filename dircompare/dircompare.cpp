#include <iostream>
#include <clocale>
#include <vector>
#include <string>
#include <filesystem>

std::vector<std::string> files1;
std::vector<std::string> files2;
std::string path1;
std::string path2;
std::string keyword;
// std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v);

void dir_iterator(std::string path, std::vector<std::string>& v);


int main(int argc, char const *argv[]){
    if (argc == 1){
        std::cout << "No arguments given." << std::endl;
        std::cout << "The following arguments are available:" << std::endl;
        std::cout << "-i | Describes the first and the second path | Example: -i path1 path2" << std::endl;
        std::cout << "-k | Describes which keyword to compare with the files found in both paths | NB: -i must be used together with this | Example: -i path1 path2 -k keyword" << std::endl;
        exit(0);
    }

    for (int i = 1; i < argc; ++i) {
        if (std::string(argv[i]) == "-i" && i+2 < argc){
            path1 = argv[i+1];
            path2 = argv[i+2];
            i += 2;
        }
        else if (std::string(argv[i]) == "-k" && i+1 < argc){
            keyword = argv[i+1];
            i++;
        }
    }

    dir_iterator(path1, files1);
    dir_iterator(path2, files2);

    // Tell user that one of the directories is empty, merely as a warning.
    if (files1.vector::empty() || files2.vector::empty()){
        std::cout << "One of the directories is empty" << std::endl;
        exit(0);
    }

    // Find files that both directories have with common keyword
    else if (!keyword.empty()){
        std::cout << std::endl << "The directories contain the same following files with the keyword " << keyword << ": " << std::endl;
        for (size_t i = 0; i < files1.size(); i++){
            for (size_t j = 0; j < files2.size(); j++){
                if (files1[i] == files2[j] && files1[i].find(keyword) != std::string::npos){
                    std::cout << "   " << files1[i] << std::endl;
                }
            }
        }
    }

    else{
        std::cout << std::endl << "The two directories contain the same following files:" << std::endl;
        for (size_t i = 0; i < files1.size(); i++){
            for (size_t j = 0; j < files2.size(); j++){
                if (files1[i] == files2[j]){
                    std::cout << "   " << files1[i] << std::endl;
                }
            }
        }
    }

    
    return 0;
}

// std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v){
//     for (size_t i = 0; i < v.size(); i++)
//         os << v[i] << std::endl;
//     return os;
// }

void dir_iterator(std::string path, std::vector<std::string>& v){
    std::string newfile;
    std::string::size_type i;
    for (const auto & file : std::filesystem::directory_iterator(path)){
        newfile = file.path().u8string();
        i = newfile.find(path);
        if (i != std::string::npos)
            newfile.erase(i, path.length());
        
        newfile.erase(remove(newfile.begin(), newfile.end(), '\\'), newfile.end());
        v.push_back(newfile);
    }
}