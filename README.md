In this project, I used Ruby to create a linked list. I used two classes, LinkedList and Node, to create the linked list. The Node class contains two instance variables: @value and @next_node. These represent the data that the node holds, as well as a pointer to the next node in the list.

The LinkedList class also contains two instance variables: @head and @tail. Head represents the first node in the list, and tail represents the last node in the list.

The LinkedList class also contains all of the instance methods utilized in this project. The methods are #append(value), #prepend(value), #insert_at(value, index), #remove_at(index), #pop, #size, #at(index), #contains?(value), #find(value), and #to_s. I also added the method #clear to assist with demonstrating each instance method.

This project showcases my understanding of the way a linked list functions. Each method either walks through the list, shuffles pointers around, or both. I had to be mindful of which node I was currently on, and how adding or removing a node would affect the nodes around it.