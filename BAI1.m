clc
clear all

mat = rand(5);


%% Cau a
a = cauA(mat);
%% Cau b
b = cauB(mat);

%% Ham cau a
function [a] = cauA(mat)
    P = 1;
    for i = 1:size(mat,1)
        for j = 1:size(mat,2)
            if abs(mat(i,j))<0.5
                P = P*mat(i,j);
            end
        end
    end
    if P == 1
       [a] = "There's no element less than 0.5 in this matrix";
    else
       [a] = P;
    end
end

%% Ham cau b
function [b] = cauB(mat)
    b = [];
    for i = 1:size(mat,1)
        for j = 1:size(mat,2)
            if abs(mat(i,j))>0.2 && abs(mat(i,j))<0.7
                b = [b, mat(i,j)];
            end
        end
    end
    b = sortM(b);
    b = b.';
end

function [M] = sortM(mat)
    M = mat;
    for k = 0:size(M,2)-1
        for l = 1:size(M,2)-k-1
            if M(l)<M(l+1)
                temp = M(l);
                M(l) = M(l+1);
                M(l+1) = temp;
            end
        end
    end
end










