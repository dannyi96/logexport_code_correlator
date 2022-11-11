import re
# a = "2"
# print("A = " + a)
# print(a + "A = " + a)
# print(a + "A = " + a + "B = ")

string = '''
import re
a = "2"
print("A")
print("A = " + a)
print(a + "A = " + a)
print(a + "A = " + a + "B = ")
print(a + 
"TEST")
'''
matches = re.finditer(r'print\((.*)\)', string)
for match in matches:
    print(match.group(0))
        
    sub_matches = re.finditer(r'([^"]*)(?P<log>"[^"]*?")', string)
    for sub in sub_matches:
        print(sub.groupdict())


