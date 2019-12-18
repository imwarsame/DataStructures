# first element in is  first element  out
# that's about it



queue = []

queue.append('a')
queue.append('b')
queue.append('c')
queue.append('d')

print("\nElements dequeued from queue")
print(queue.pop(0))
print(queue.pop(0)) #removes element at index 0, then after inserts moves element at index 1 to index 0 i.e. first in the queue 
print(queue.pop(0))
print(queue.pop(0))

print(queue.pop(0)) #results in trace back error, can't remove from any empty queue

print("\nQueue after removing elements")
print(queue) 

