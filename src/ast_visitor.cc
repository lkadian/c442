#include "ast_visitor.h"

namespace c442 {

void ASTVisitor::DFS(ASTNode& node) {
  for (auto& child : node.Children()) {
    child->Accept(*this);
  }
}

}  // namespace c442