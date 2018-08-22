def find():
		Set up a function to take a column and classify its values as either True or False (i.e. Binarize)
		
def majority():
		This returns the count of attribute values for setting up the root node.  
				It will classify data as one item or another.  The data will either:
						1. Fall completely under one classification or another (in which case you are done - no further algorithm)
						2. Fall within both groups, in which case this function will tell you which classification represents the majority.

def entropy():
		If the majority function above returns a percentage of the data that falls into either of two values within
		    the target attribute, then:
						this function calculates the entropy of the whole dataset from the perspective of this attribute.
				
def gain():
		If the data is split according to the values present above, this function calculates the entropy (or gain in 
				information) which would result.
						The entropy of the subset is then subtracted from the dataset's entropy to compare against the 
								entropies of other attributes in comparison to the overall dataset.
								
def chooseAttr():
		This function compares the entropies of various attributes, to find which one would lead to the most 
				information gain.
				
def getValues():
		This gets the values within the attribute which was chosen so as to calculate entropy later.
		
def getExamples():
		This splits the values within the best attribute column.  The values either fall within the majority or the
				minority.
				
def makeTree():
		This function applies the results of the best attribute/entropy results from above to a tree algorithm. 
				If the dataset only has one attribute, it returns that attribute.
				If the data is labelled with one value, it returs that value.
				If the two previous situations do not occur, then:
						It grabs the best attribute from above and parses the data according to its values:
								Root node is now set up.
						Then it makes subset-nodes according to the values within that attribute.
				
				
				
				
				
				
				
				
				