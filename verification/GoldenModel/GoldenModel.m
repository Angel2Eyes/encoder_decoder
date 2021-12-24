format long


global H1 H2 H3;
H1 = [1 1 1 1 1 1 1 1;
    1 1 1 0 0 1 0 0;
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

% A = dlmread('goldenInput.txt');
outputFileID = fopen('goldenOutput.txt','w');
inputFileID = fopen('input.txt','r');

formatSpec = '%d %d %d %d %d %d';
sizeA = [6 Inf];
A = fscanf(inputFileID,formatSpec,sizeA);
A = transpose(A);

for i = 1:size(A,1)
    
   % get task data
   % data expected in format: index, operation, input size, input, noise,
   % num_of_errors
   task_id = A(i,1);          % task id
   operation = A(i,2);        % 0 = encode, 1 = decode, 2 = full channel
   input_data_size =  A(i,3); % indicator of codeword width: 0 = 8, 1 = 16, 2 = 32
   data = A(i,4);             % vector of data read
   noise = A(i, 5);
   num_of_errors_input = A(i,6);
   
   % do operation and write to file
   % data written in format: index, num_of_errors, output
   if operation == 0
       encoded_data = encode(data, input_data_size);
       output = cat(2,task_id,[0],bi2de(encoded_data));
       dlmwrite('goldenOutput.txt',output,'delimiter',' ','-append','precision','%f');
   else
       if operation == 1
       [decoded_data, num_of_errors] = decode(data, input_data_size);
       output = cat(2,task_id,num_of_errors,bi2de(decoded_data));
       dlmwrite('goldenOutput.txt', output,'delimiter',' ','-append','precision','f');
       else
           output = cat(2,task_id,[num_of_errors_input],data);
           dlmwrite('goldenOutput.txt',output,'delimiter',' ','-append','precision','%f');
       end
   end
end

function encoded = encode(vector,size)
global H1 H2 H3;
    
    switch size
        % info size 4
        case 0
            vector = de2bi(vector,32);
            vector = vector(1:4);
            % get the initial parity vector
            parity = H1(:,1:4) * transpose(vector);
            
            % make it binary
            parity = mod(parity,2);
            
            % the last parity bit is the sum of all other parities plus
            % info vector
            parity(1) = mod(sum(parity(2:4) == 1) + sum(vector(:) == 1),2);
            
            % return it
            encoded(1:4) = vector;
            encoded(5:8) = fliplr(parity);
            
        % info size 11
        case 1
            vector = de2bi(vector,32);
            vector = vector(1:11);
            % get the initial parity vector
            parity = H2(:,1:11) * transpose(vector);
            
            % make it binary
            parity = mod(parity,2);
            
            % the last parity bit is the sum of all other parities plus
            % info vector
            parity(1) = mod(sum(parity(2:5) == 1) + sum(vector(:) == 1),2);
            
            % return it
            encoded(1:11) = vector;
            encoded(12:16) = fliplr(parity);
            
        % info size 26
        otherwise
            vector = de2bi(vector,32);
            vector = vector(1:26);
            % get the initial parity vector
            parity = H3(:,1:26) * transpose(vector);
            
            % make it binary
            parity = mod(parity,2);
            
            % the last parity bit is the sum of all other parities plus
            % info vector
            parity(1) = mod(sum(parity(2:6) == 1) + sum(vector(:) == 1),2);
            
            % return it
            encoded(1:26) = vector;
            encoded(27:32) = fliplr(parity);
    end
end

function [decoded, num_of_errors] = decode(vector, size)
global H1 H2 H3;
    switch size
        % codeword size 8
        case 0
            vector = de2bi(vector,32);
            vector = vector(1:8);
            % do matrix multiploication
            leftover = H1 * transpose(vector);
            leftover = mod(leftover,2); 
            
            % if result is 0
            if leftover == 0
                
                % return the left part of the codeword and 0 errors
                decoded = vector(1:4);
                num_of_errors = 0;
            else
                
                % if not, check if result is col of matrix
                isColumn = 0;
                index = 0;
                for i = 1:8

                    if H1(:,i) == leftover
                        isColumn = isColumn + 1;
                        index = i;
                    end
                end
                
                % if it is only 1 col
                if isColumn == 1
                    
                    % flip the bit on the col index
                    vector(index) = ~vector(index);
                    
                    % return the left part of the codeword and 1 errors
                    decoded = vector(1:4);
                    num_of_errors = 1;
                
                % if it is more than 1 col or 0 cols
                else
                
                    % return the left part of the codeword and 1 errors
                    decoded = zeros(1,4);
                    num_of_errors = 2;
                end
            end
            
        % codeword size 16
        case 1
            vector = de2bi(vector,32);
            vector = vector(1:16);
            % do matrix multiploication
            leftover = H2 * transpose(vector);
            leftover = mod(leftover,2); 
            
            % if result is 0
            if leftover == 0
                
                % return the left part of the codeword and 0 errors
                decoded = vector(1:11);
                num_of_errors = 0;
            else
                
                % if not, check if result is col of matrix
                isColumn = 0;
                index = 0;
                for i = 1:16

                    if H2(:,i) == leftover
                        isColumn = isColumn + 1;
                        index = i;
                    end
                end
                
                % if it is only 1 col
                if isColumn == 1
                    
                    % flip the bit on the col index
                    vector(index) = ~vector(index);
                    
                    % return the left part of the codeword and 1 errors
                    decoded = vector(1:11);
                    num_of_errors = 1;
                
                % if it is more than 1 col or 0 cols
                else
                
                    % return the left part of the codeword and 1 errors
                    decoded = zeros(1,11);
                    num_of_errors = 2;
                end
            end
        
        % codeword size 32
        otherwise
            vector = de2bi(vector,32);
             % do matrix multiploication
            leftover = H3 * transpose(vector);
            leftover = mod(leftover,2); 
            
            % if result is 0
            if leftover == 0
                
                % return the left part of the codeword and 0 errors
                decoded = vector(1:26);
                num_of_errors = 0;
            else
                
                % if not, check if result is col of matrix
                isColumn = 0;
                index = 0;
                for i = 1:32

                    if H3(:,i) == leftover
                        isColumn = isColumn + 1;
                        index = i;
                    end
                end
                
                % if it is only 1 col
                if isColumn == 1
                    
                    % flip the bit on the col index
                    vector(index) = ~vector(index);
                    
                    % return the left part of the codeword and 1 errors
                    decoded = vector(1:26);
                    num_of_errors = 1;
                
                % if it is more than 1 col or 0 cols
                else
                
                    % return the left part of the codeword and 1 errors
                    decoded = zeros(1,26);
                    num_of_errors = 2;
                end
            end
            
    end
end
