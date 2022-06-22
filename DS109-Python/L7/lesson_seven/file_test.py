file = open('example.txt', 'w')
print('File Name:', file.name)
print('File Open Mode:', file.mode)

def status(file):
    if(file.closed != False):
        return 'Closed'
    else:
        return 'Open'

print('File Status:', status(file))

file.close()

print('File Status:', status(file))