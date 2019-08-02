#include <utility>

#ifdef _WIN32
// Thanks SO
#include <stdlib.h>
#include <stdio.h>
#include <windows.h>
#else
// Thanks SO
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <pwd.h>
#include <iostream>
#endif

#include "Config.h"
#include "../logger/logger.h"

static void defaultCheck(Config& config, const std::string& field, const std::string& defaultValue);

Config::Config(const std::string& configName) {
    std::string homedir;

#ifdef _WIN32
    // Thanks SO
    homedir = getenv("USERPROFILE"));
    CreateDirectory((homedir + "\\boconfig").c_str() ,NULL)
    this->_path = homedir + "\\boconfig\\" + configName + ".sconf"
#else
    // Thanks SO
    if ((homedir = getenv("HOME")).empty()) {
        homedir = getpwuid(getuid())->pw_dir;
    }
    mkdir((homedir + "/.boconfig").c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH); // NOLINT
    this->_path = homedir + "/.boconfig/" + configName + ".sconf";
#endif

    this->_file.open(this->_path);

    std::string line;
    while (getline(this->_file, line)) {
        std::size_t delimPos = line.find(':');
        std::string key = line.substr(0, delimPos);
        std::string value = line.substr(delimPos + 1);

        this->data[key] = value;
    }
}

Config::~Config() {
    this->_file.close();
}

std::string Config::get(std::string key) {
    std::string v = this->data[key];
    return this->data[key];
}

std::string Config::getPath() {
    return this->_path;
}

void Config::set(const std::string& key, std::string value) {
    this->data[key] = std::move(value);
    write();
}

void Config::write() {
    this->_file.close();
    this->_file.open(this->_path, std::fstream::out | std::fstream::trunc);

    for (auto const& [key, value] : this->data) {
        this->_file << key << ":" << value << "\n";
    }

    this->_file.close();
    this->_file.open(this->_path, std::fstream::in);
}

Config* config::loadWindowConfig() {
    // Don't worry; this won't overwrite en existing configuration file.
    static Config* conf = new Config("window");

    logger::info("Loading configuration file \"" + conf->getPath() + "\"");

    // Set up defaults here

    logger::info("Loaded configuration file \"" + conf->getPath() + "\"");

    // Return a pointer to the config object
    return conf;
}

Config* config::loadGameConfig() {
    static Config* config = new Config("game");

    logger::info("Loading configuration file \"" + config->getPath() + "\"");

    // Set up defaults here

    logger::info("Loaded configuration file \"" + config->getPath() + "\"");

    return config;
}

static void defaultCheck(Config& config, const std::string& field, const std::string& defaultValue) {
    if (config.get(field).empty()) {
        logger::info(field + " empty; initializing to default value " + defaultValue);
        config.set(field, defaultValue);
    }
}