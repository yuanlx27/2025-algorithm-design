def find_median(A, B):
    n = len(A)

    l = 0
    r = n
    while l <= r:
        i = (l + r) // 2

        al = A[i - 1] if i > 0 else float('-inf')
        ar = A[i] if i < n else float('inf')
        bl = B[n - i - 1] if i < n else float('-inf')
        br = B[n - i] if i > 0 else float('inf')

        if al <= br and bl <= ar:
            return (max(al, bl) + min(ar, br)) / 2

        if al > br:
            r = i - 1
        else:
            l = i + 1


A = [1, 2, 3, 4]
B = [5, 6, 7, 8]
print(find_median(A, B))  # Output: 4.5
