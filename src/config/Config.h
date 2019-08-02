//
// Created by will on 4/13/19.
//

#ifndef BREAKOUT_CONFIG_H
#define BREAKOUT_CONFIG_H

#include <string>
#include <fstream>
#include <map>
#include <vector>

class Config {

public:
    explicit Config(const std::string& configName);
    ~Config();
    std::string get(std::string key);
    std::string getPath();
    void set(const std::string& key, std::string value);

    // For temporary changes; not written to disk
    void setInMemory(const std::string& key, std::string value);

private:
    std::string _path;
    std::fstream _file;
    std::map<std::string, std::string> data;
    std::vector<std::string> _noWrite;

    bool writeable(std::string key);
    void write();
};

namespace config {
    Config* loadWindowConfig();
    Config* loadGameConfig();
}

#endif //BREAKOUT_CONFIG_H