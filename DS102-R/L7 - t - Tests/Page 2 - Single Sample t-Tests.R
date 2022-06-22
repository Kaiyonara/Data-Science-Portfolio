
head(frostedflakes)

t_obj <- t.test(frostedflakes$Lab, mu = 37)
print(t_obj)
