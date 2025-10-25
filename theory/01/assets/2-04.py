def find_peak(L):
    l = 0
    r = len(L) - 1
    while l < r:
        m = (l + r) // 2
        if L[m] < L[m + 1]:
            l = m + 1
        else:
            r = m
    return L[l]


L = [1, 3, 5, 7, 6, 4, 2]

assert find_peak(L) == 7
