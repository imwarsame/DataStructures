# left subtree of a node contains only nodes with keys < than the nodes key
# the right subtree of a node contains only nodes with keys > than the nodes key
# left and right sub tree must also be a binary subtree


class Node:  # invisible to the user
    # constructor
    def __init__(self, value):
        self.value = value  # same as this.value = value in java
        self.left_child = None  # init left and right child to none meaning no child yet
        self.right_child = None

    def insert(self, data):
        if self.value == data:
            return False  # if data is in node, don't add it. return false
        elif self.value > data:
            if self.left_child:  #check if there's a left child
                return self.left_child.insert(data)   #insert data into that left child
            else:
                self.left_child = Node(data) #creates a left child if there's no left child
                return True
        else:
            if self.right_child:
                return self.right_child.insert(data)
            else:
                self.right_child = Node(data)
                return True

    def find(self, data):
        if (self.value == data):
            return True
        elif self.value > data:
            if self.left_child:
                return self.left_child.find(data)
            else:
                return False
        else:
            if self.right_child:
                return self.right_child.find(data)  #recursive function
            else:
                return False

    def pre_order(self):
        if self:
            print (str(self.value))
            if self.left_child:
                self.left_child.pre_order()
            if self.right_child:
                self.right_child.pre_order()

    def post_order(self):
        if self:
            if self.left_child:
                self.left_child.post_order()
            if self.right_child:
                self.right_child.post_order()
            print(str(self.value))

    def in_order(self):
        if self:
            if self.left_child:
                self.left_child.in_order()
            print(str(self.value))
            if self.right_child:
                self.right_child.in_order()

class Tree:  # main interface for user
    def __init__(self):
        self.root = None

    def insert(self, data):
        if self.root:  # checks if root node exists
            return self.root.insert(data)
        else:
            self.root = Node(data)  # if root node doesn't exists, then create it
            return True  # tell the user 'True' if node was added, false if not

    def find(self, data):
        if self.root:    #if root exists
            return self.root.find(data)
        else:
            return False

    def pre_order(self):
        self.root.pre_order()

    def post_order(self):
        self.root.post_order()

    def in_order(self):
        self.root.in_order()

bst = Tree()
bst.insert(10)
print(bst.insert(15)) #check to see if it prints true or false as function signature
bst.pre_order()
bst.post_order()
bst.in_order()