% inputFileID = fopen('goldenInput.txt','r');
%outputFileID = fopen('goldenOutput.txt','w');

global H1 H2 H3;
H1 = [1 1 1 1 1 1 1 1;
    1 1 1 0 0 0 0 0;
    1 1 0 1 0 0 1 0;
    1 0 1 1 0 0 0 1];
H2 = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0;
    1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 0;
    1 1 0 0 1 1 0 1 1 0 1 0 0 0 1 0;
    1 0 1 0 1 0 1 1 0 1 1 0 0 0 0 1];
H3 = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0;
    1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0;
    1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 0 0;
    1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 0 0 1 1 0 1 1 0 1 0 0 0 0 1 0;
    1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1];

A = dlmread('goldenInput1.txt');

for i = 1:size(A,1)
   operation = A(i,1);        % 0 = encode, 1 = decode
   input_data_size =  A(i,2); % can be 4, 8, 16 or 32
   data = A(i,3:end);         % vector of data read
   encoded_data = decode(data(1:input_data_size), input_data_size)
   
end

function encoded = decode(vector,size)
global H1 H2 H3;
    switch size
        case 8
            vector
            H1
            encoded = xor(H1, vector);
        case 16
            vector
            encoded = xor(vector, H2);
        otherwise
            encoded = xor(vector, H3);
    end
end
