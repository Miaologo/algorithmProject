import Foundation

public class TreeNode {
    
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
    }
}

public func buildTree(_ vals: [Int?]) -> TreeNode? {
    guard !vals.isEmpty, let rootVal = vals[0] else { return nil }
    
    func buildTree(_ root: TreeNode?, _ index: Int) {
        guard let root = root else { return }
        if index < vals.count {
            let left = index * 2 + 1
            let right = index * 2 + 2
            if left < vals.count, let v = vals[left] {
                root.left = TreeNode(v)
                buildTree(root.left, left)
            }
            if right < vals.count, let v = vals[right] {
                root.right = TreeNode(v)
                buildTree(root.right, right)
            }
        }
    }
    
    let root = TreeNode(rootVal)
    buildTree(root, 0)
    return root
}

public func printTree(_ tree: TreeNode?, _ indent: Int = 50) {
    guard let tree = tree else { return }
    
    print(String(repeating: "=", count: 100))
    defer { print(String(repeating: "=", count: 100)) }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        return maxDepth(root, 0)
    }
    
    func maxDepth(_ root: TreeNode?, _ depth: Int) -> Int {
        if root == nil {
            return depth
        }
        return max(maxDepth(root?.left, depth), maxDepth(root?.right, depth)) + 1
    }
    let maxLayer = maxDepth(tree)
    
    struct Holder {
        let layer: Int
        let tree: TreeNode
        let indent: Int
    }
    
    var layer = 0
    var preIndent = 0
    var arr = [Holder(layer: 0, tree: tree, indent: indent)]
    while !arr.isEmpty {
        while let node = arr.first, node.layer == layer {
            arr.removeFirst()
            print(String(repeating: " ", count: node.indent - preIndent - 1), terminator: "")
            preIndent = node.indent
            print(node.tree.val, terminator: "")
            assert(layer < 10)
            if let l = node.tree.left {
                arr.append(Holder(layer: layer + 1, tree: l, indent: node.indent - (maxLayer - layer)))
            }
            if let r = node.tree.right {
                arr.append(Holder(layer: layer + 1, tree: r, indent: node.indent + (maxLayer - layer)))
            }
        }
        print()
        preIndent = 0
        layer += 1
    }
}
