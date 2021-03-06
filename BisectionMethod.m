function xc = BisectionMethod(f,a,b,TOL)
%Using Bisection Method to find the root of f(x)=0
%Input: f is an anonymous function
%       a is the left end point of the range
%       b is the right end point of the range
%       TOL is the solution error
%Output:xc is the root
t=1;
disp('Initial Range:');
disp([' a=' num2str(a) ' b=' num2str(b)]);
while(b - a) / 2 > TOL
    c = (a + b) / 2;
    fc = f(c);
    if fc == 0
        break;
    end
    if sign(fc) == sign(f(b));
        b=c;
    else
        a=c;
    end
    disp(['Iteration No. ' num2str(t)]);
    disp([' a=' num2str(a) ' b=' num2str(b)]);
    t = t + 1;
end
xc = (a + b) / 2;
end
