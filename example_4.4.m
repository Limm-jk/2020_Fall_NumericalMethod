% 201602057 Junkyu-LimS

syms x
h = 0.5
f = -0.1 * x^4 - 0.15 * x^3 - 0.5 * x^2 - 0.25 * x + 1.2;
df = diff(f, x, 1);

a = 0.5;
a_p = a - h;
a_n = a + h;

t = function_handle(df)(a)

result_a_p = function_handle(f)(a_p)
result_a = function_handle(f)(a)
result_a_n = function_handle(f)(a_n)

f_d = (result_a_n - result_a) / h
b_d = (result_a - result_a_p) / h
c_d = (result_a_n - result_a_p) / (2*h)

e_f_d = abs((t - f_d) / t) * 100
e_b_d = abs((t - b_d) / t) * 100
e_c_d = abs((t - c_d) / t) * 100

h = 0.25
a = 0.5
a_p = a - h;
a_n = a + h

result_a_p = function_handle(f)(a_p)
result_a = function_handle(f)(a)
result_a_n = function_handle(f)(a_n)

f_d = (result_a_n - result_a) / h
b_d = (result_a - result_a_p) / h
c_d = (result_a_n - result_a_p) / (2*h)

e_f_d = abs((t - f_d) / t) * 100
e_b_d = abs((t - b_d) / t) * 100
e_c_d = abs((t - c_d) / t) * 100