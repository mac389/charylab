### Trie Data Structure. 

**Context** 
FlashText ([GitHub](https://github.com/vi3k6i5/flashtext), [algorithm](https://arxiv.org/pdf/1711.00046.pdf)) uses tries to identify strings faster than regular expressions. The authors of FlashText chose a trie over regular expressions so that the time needed for to locate or replace a keyword did not increase with the size of the document. I think FlashText could be useful for keyword retrieval in Psychic Llama, the identification of KOLs, or my investigation of DNP doses mentioned online. 


**Introduction**

A trie is a tree whose nodes store letters. One can re_trie_ve tokens from the _trie_ by traversing a certain path. A word made of _n_ letters is represented by a trie of depth _n_. Each level has all the letters needed to represent the tokens of interest. This, as an aside, makes tries a natural source for text for autocompletes. 

(I first thought each node would need 26 children, but I then realized that not all letter combinations are possible.) The user, moreover, is likely to be intereted in a subset of all possible combinations of letters. 

```
class TrieNode(object):
   def __init__(self, symbol=None, alphabet_length=26):
      self.symbol= symbol
      self.children = [None]*alphabet_length
      //Implicit coding of {0:A, 1:B,...}
```

We can also add a counter to identify frequently used nodes. 

```
self.counter = 0
```

The root of a trie contains references to its chlidren. It is otherwise empty. 


```
root = TrieNode(value = "")
```

We add a node to a trie by starting at the root, and successively adding characters that do not appear in a branch. 

```
   def add(root, token):
      node = root // set current node to root 
   	   for symbol in token:
   	       found = False //Cannot find anything in root. It has empty value.
   	       for child in node.children:
   	           while not found:
	   	           if child.symbol == symbol:
   		           	child.counter += 1
   	   		        	node = child
   	   		//Sequence does not exist in trie
   	   		if not found:
   	   			  new_node = TrieNode(symbol=symbol)
   	   		     node.children.append(new_node)
   	   		     node = new_node
   	           
``` 

We traverse the trie (retrieve a string) by:

```
def find(root, prefix):
    node = root
    if not root.children: #Cannot traverse an empty trie
    	return (False,0)
    for symbol in prefix:
    	found = False
    	for child in node.children:
    		while not found:
	    		if child.symbol == symbol:
   			 		found = True
    				node = child
    	if not found:
    		return (False,0)
    			
```


**Production Notes**

1. Link to (description of?) Psychic Llama
1. Link to (description of?) creation of KOL software
1. Link to DNP project