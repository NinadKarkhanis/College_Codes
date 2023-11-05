from collections import defaultdict
class Graph:
    #Constructor
    def __init__(self):
        # Default dictonary to store graph
        self.graph=defaultdict(list)
    # Function to add an edge to graph
    def addEdge (self,u,v):
        self.graph[u].append(v)
        # Print(u,self.graph[u])
        
    #function used by DFS
    def DFSutil(self,v,visited):
        # Mark current node as visited and print 
        # print("inside dfsutil",v,end="")
        # print(visited,end="")
        visited[v]=True
        print(v,end="")
        
        # Recure for all the vertices adjacent to this vertex
        for i in self.graph[v]:
            # print(end="\n ")
            # print("inside for " ,i,visited[i])
            if visited[i] ==False:
                self.DFSutil(i,visited)
                
    # Function to do DFS Traversal. It usercursive DFSutil
    def DFS(self,v):
        # Mark all the vertices as not visited
        visited=[False]*(len(self.graph))
        # print ("inside DSF")
        # print (visited)
        
        # Call the recursive helper funciton to print DFS traversal
        self.DFSutil(v,visited)
        
# Creating graph
g=Graph()
g.addEdge(0,1)
g.addEdge(0,2)
g.addEdge(1,2)
g.addEdge(2,0)
g.addEdge(2,3)
g.addEdge(3,3)

print("Following is Depth First Traversal starting from vertex 2")
g.DFS(2)