#include "ast_visitor.h"

namespace mith {

void ASTVisitor::DFS(ASTNode& node) {
  for (auto& child : node.Children()) {
    child->Accept(*this);
  }
}

}  // namespace mith