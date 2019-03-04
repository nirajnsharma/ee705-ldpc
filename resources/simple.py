#!/usr/bin/python

# Oct 2016, HPC Lab, EE, IITB

import sys

N = 73
incidence = [1,2,13,21,27,31,34,36,58]

reverseIncidence = [N - i for i in incidence]

checkNodeOutput = [dict () for i in range (N)]  # {outputForBitNodeId:Output}
bitNodeOutput   = [dict () for i in range (N)]  # {outputForCheckNodeId:Output}
codeword        = [0 for i in range (N)] # initial llr values received.

def readCodeWord (fileName, codewordNumber):
    """Received llr soft (e.g. 5 bit) values are read from given file.
       Values should be in 2's complement format.
       Each line should have N bits (ascii 0/1).
       First line should have lsb, and so on."""
    global codeword
    firstLineNumber = (codewordNumber - 1) * 5 + 1
    lineNumber = 0
    wt = 1
    for line in file (fileName):
        lineNumber = lineNumber + 1
        if lineNumber >= firstLineNumber and lineNumber < (firstLineNumber + 5):
            codeword = [codeword[i] + wt * int(line[i]) for i in range (N)]
            wt = wt * 2
        if lineNumber == (firstLineNumber + 5):
            break
    for i in range (N):
        if codeword[i] >= 2**(5-1):
            codeword[i] = codeword[i] + (-1 * (2**5))
    for i in range (N):
        for j in range (len (incidence)):
            bitNodeOutput[i][(i + incidence[j]) % N] = codeword[i]

def checkNodeProcess ():
    global checkNodeOutput
    for i in range (N):
        receivedData  = [bitNodeOutput[(i + shift) % N][i] for shift in reverseIncidence]
        signs         = [-1 if val < 0 else 1 for val in receivedData]
        signXor       = reduce (lambda x,y: x*y, signs)
        absData       = map (abs, receivedData)
        for j in range (len (reverseIncidence)):
            checkNodeOutput[i][(i + reverseIncidence[j]) % N] = signXor * signs[j] * min ([absData[k] for k in range (len (absData)) if k != j])

def bitNodeProcess ():
    global bitNodeOutput
    for i in range (N):
        receivedData  = [checkNodeOutput[(i + shift) % N][i] for shift in incidence]
        allSum = codeword[i] + sum (receivedData)
        for j in range (len (incidence)):
            bitNodeOutput[i][(i + incidence[j]) % N] = allSum - receivedData[j]

def printValues (valueList, title):
    for i in range (len (valueList)):
        d = valueList[i]
        print (title + "_" + str (i) + ":"),
        if 0 == len (d):
            return
        for key in sorted (d.keys ()):
            print ("% 3d:% 3d" % (key, d[key])),
        print ("")
    print (" --")

if 2 != len (sys.argv):
    print ("usage : " + sys.argv[0] + " <soft_llr_value_bit_plane_file_lsb_to_msb.txt>")
    sys.exit (1)

readCodeWord (sys.argv[1], 1)

print ("Before beginning:")
print ("codeword : " + str(codeword))
printValues (bitNodeOutput, "bitnode")

maxItrs = 5
for itr in range (1, maxItrs + 1):
    print ("starting iteration " + str (itr) + " of " + str (maxItrs) + " iterations.")
    checkNodeProcess ()
    print ("After checkNodeProcess, checkNodeOutputs are :")
    printValues (checkNodeOutput, "checknode")
    bitNodeProcess ()
    print ("After bitNodeProcess, bitNodeOutputs are :")
    printValues (bitNodeOutput, "bitnode")

print ("Final : After " + str (maxItrs) + " iterations, checkNodeOutputs are :")
finalSums = list ()
for i in range (N):
    receivedData  = [checkNodeOutput[(i + shift) % N][i] for shift in incidence]
    allSum = codeword[i] + sum (receivedData)
    print ("For bitnode_" + str (i) + " : " + str (receivedData) + ", sum :" + str (allSum))
    finalSums.append (allSum)
print ("decoded :" + str ([0 if 0 > finalSums[i] else 1 for i in range (N)]))
print ("received :" + str ([0 if 0 > codeword[i] else 1 for i in range (N)]))