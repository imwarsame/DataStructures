import heapq

heap = [32,546,54,7,65,5,8,3425,3]

# convert to a heap
heapq.heapify(heap)
print(heap)

# add stuff
heapq.heappush(heap, 8)
print(heap)