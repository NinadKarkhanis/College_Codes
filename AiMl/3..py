def tower_of_hanoi(disks, source, auxiliary, target):
    if(disks == 1):
        print("move disk 1 from {} to rod {}.".format(source, target))
        return
    tower_of_hanoi(disks-1, source, target, auxiliary)
    print('in 2nd move disk {} from rod {} to rod {}'.format(disks, source, target))
    tower_of_hanoi(disks -  1, auxiliary, source, target)

disks = int(input('Enter number of disks'))
tower_of_hanoi(disks, 'A', 'B', 'SC')    