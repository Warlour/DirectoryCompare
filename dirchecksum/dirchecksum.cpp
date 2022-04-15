#include <iostream>
#include <filesystem>
#include <iomanip>
#include <sstream>
#include <string>

std::vector<std::string> files1;
std::string path1;

std::ostream& operator <<(std::ostream& os, const std::vector<std::string>& v);

std::string sha256(const std::string str);
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

    std::cout << sha256("test") << std::endl;
    
    return 0;
}

std::string sha256(const std::string str){
    unsigned char hash[SHA256_DIGEST_LENGTH];
    SHA256_CTX sha256;
    SHA256_Init(&sha256);
    SHA256_Update(&sha256, str.c_str(), str.size());
    SHA256_Final(hash, &sha256);
    std::stringstream ss;
    for(int i = 0; i < SHA256_DIGEST_LENGTH; i++)
    {
        ss << std::hex << std::setw(2) << std::setfill('0') << (int)hash[i];
    }
    return ss.str();
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