function [ ] = linear_solver( A , B)
%LINEAR_SOLVER Summary of this function goes here
%   Detailed explanation goes here
rankOfA = rank(A);
augumentedMatrix = [A, B];
rankOfAugumentedMatrix = rank(augumentedMatrix);
sizeOfA = size(A);
numberOfVariables = sizeOfA(2);
if rankOfAugumentedMatrix == rankOfA
    fprintf('System is Consistent ');
    if rankOfAugumentedMatrix == numberOfVariables
        fprintf('and has Unique Solution\n');
        %solution = inv(A)*B;
        solution = A\B;
        for i=1:1:size(solution)
            fprintf('X%d = %f\n',i,solution(i));
        end
    else
        fprint('and has infinitely many solutions with %d free variables\n', numberOfVariables - rankOfA);
    end
else
    fprintf('System is Inconsistent\n');
end
end