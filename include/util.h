#ifndef C442_UTIL_H_
#define C442_UTIL_H_

#include <iostream>
#include <set>
#include <string>
#include <vector>

namespace mith {
namespace util {

// Run the generated moon code and return the output.
std::string ExeGeneratedCode();

// Trim whitespace from both ends of a string.
std::string TrimString(const std::string& str);

std::vector<std::string> SplitStrByNewline(const std::string& str);

template <typename T>
void PPrintVector(const std::vector<T> vec) {
  std::cout << "[";
  auto separator = ", ";
  auto sep = "";
  for (T val : vec) {
    std::cout << sep << val;
    sep = separator;
  }
  std::cout << "]" << std::endl;
};

template <typename T>
void PPrintSet(const std::set<T> vec) {
  std::cout << "{";
  auto separator = ", ";
  auto sep = "";
  for (T val : vec) {
    std::cout << sep << val;
    sep = separator;
  }
  std::cout << "}" << std::endl;
};

}  // namespace util
}  // namespace mith

#endif  // C442_UTIL_H_
