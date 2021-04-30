--Stephen Stengel
--A program that shows the effect of caching.
--Doing operations with large matricies can cause many cache misses. By
--selecting a small square of a matrix, you can load all its data into
--cache. This reduces the number of cache misses.

--Todo: make a flat matrix version of the functions. This should increase speed by another magnitude.

function main()
	local start = os.clock()
	math.randomseed( os.time() )
	local squareSize = tonumber(arg[1]) or 10 --if no input, default 10
	
	io.write( string.format("squareSize: %d\n", squareSize) )
	
	--~ io.write("Press enter to continue.")
	--~ io.read()
	
	
	--~ hee = createFlatOutMatrix(squareSize)
	--~ fID = createFlatIDMatrix(squareSize)
	--~ fRM = createFlatRandMatrix(squareSize)
	
	--~ printFlatMatrix(fRM)
	
	--~ out = multFlatBlockMats(fRM, fID, 5)
	--~ if -1 == out then
		--~ print("quitting because bad block")
		--~ return -1
	--~ end
	--~ print("equal?:")
	--~ checkIfFlatMatEqual(out, fRM)
	
	
	--~ os.exit()
	
	
	

	--~ printMatrix(myArray)
	--~ printMatrix(idMat)
	
	--~ io.write("Press enter to continue.")
	--~ io.read()
	
	
	--Start tests
	myArray = createRandMat(squareSize)
	idMat = createIDMat(squareSize)
	print("Now running the block style tests for myArray*idMat...")
	local blockSize = 8
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, idMat, blockSize)
	local blockSize = 10
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, idMat, blockSize)
	local blockSize = 20
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, idMat, blockSize)
	local blockSize = 25
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, idMat, blockSize)
	local blockSize = 40
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, idMat, blockSize)
	local blockSize = 100
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, idMat, blockSize)
	
	
	print("\nNow running the block style tests for myArray*myArray...")
	local blockSize = 8
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, myArray, blockSize)
	local blockSize = 10
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, myArray, blockSize)
	local blockSize = 20
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, myArray, blockSize)
	local blockSize = 25
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, myArray, blockSize)
	local blockSize = 40
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, myArray, blockSize)
	local blockSize = 100
	fwrite("Now timing the block style with block size: %d\n", blockSize)
	timeBlockMultTwo(myArray, myArray, blockSize)
	
	print("\nNow running unoptimized style...")
	fwrite("Multiplying myArray and idMat...\n")
	timeMultTwo(myArray, idMat)
	fwrite("Now timing myArray*myArray...\n")
	timeMultTwo(myArray, myArray)
	
	
	fID = createFlatIDMatrix(squareSize)
	fRM = createFlatRandMatrix(squareSize)
	
	print("\nNow running the Flat block style tests for fRM*fID...")
	--~ local blockSize = 8
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fID, blockSize)
	--~ local blockSize = 10
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fID, blockSize)
	--~ local blockSize = 20
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fID, blockSize)
	--~ local blockSize = 25
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fID, blockSize)
	--~ local blockSize = 40
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fID, blockSize)
	local blockSize = 50
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fID, blockSize)
	local blockSize = 100
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fID, blockSize)
	local blockSize = 200
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fID, blockSize)
	local blockSize = 250
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fID, blockSize)
	local blockSize = 500
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fID, blockSize)
	
	print("\nNow running the Flat block style tests for fRM*fRM...")
	--~ local blockSize = 8
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fRM, blockSize)
	--~ local blockSize = 10
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fRM, blockSize)
	--~ local blockSize = 20
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fRM, blockSize)
	--~ local blockSize = 25
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fRM, blockSize)
	--~ local blockSize = 40
	--~ fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	--~ timeFlatBlockMultTwo(fRM, fRM, blockSize)
	local blockSize = 50
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fRM, blockSize)
	local blockSize = 100
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fRM, blockSize)
	local blockSize = 200
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fRM, blockSize)
	local blockSize = 250
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fRM, blockSize)
	local blockSize = 500
	fwrite("Now timing the Flat block style with block size: %d\n", blockSize)
	timeFlatBlockMultTwo(fRM, fRM, blockSize)
	
	
	print("\nNow running FLAT unoptimized style...")
	fwrite("Multiplying myArray and idMat...\n")
	timeFlatMultTwo(fRM, fID)
	fwrite("Now timing myArray*myArray...\n")
	timeFlatMultTwo(fRM, fRM)

	
	fwrite("Overall time: %f\n", os.clock() - start)
end

function checkIfMatEqual(A, B)
	for i = 1, #A do
		for j = 1, #A do
			if A[i][j] ~= B[i][j] then
				print("NOT THE SAME!\n")
				return false
			end
		end
	end
	print("CORRECT!\n")
	
	return true
end

function checkIfFlatMatEqual(A, B)
	for i = 1, #A do
		if A[i] ~= B[i] then
			print("NOT THE SAME!\n")
			
			return false
		end
	end
	print("CORRECT!\n")
	
	return true
end

function timeBlockMultTwo(A, B, blockSize)
	local start = os.clock()
	out = multSqBlockStyle(A, B, blockSize)
	local total = os.clock() - start
	fwrite("done!\tTook %.2f seconds!\n", total)
	
	return total
end

function timeFlatBlockMultTwo(A, B, blockSize)
	local start = os.clock()
	out = multFlatBlockMats(A, B, blockSize)
	local total = os.clock() - start
	fwrite("done!\tTook %.2f seconds!\n", total)
	
	return total
end

function timeFlatMultTwo(A, B)
	local start = os.clock()
	out = multFlatMats(A, B)
	local total = os.clock() - start
	fwrite("done!\tTook %.2f seconds!\n", total)
	
	return total
end

function createFlatRandMatrix(sideSize)
	local flatLen = sideSize * sideSize
	--~ math.random(100)
	local out = {}
	for i = 1, sideSize do
		for j = 1, sideSize do
			out[(i - 1) * sideSize + j] = math.random(100)
		end
	end
	
	return out
end

function createFlatIDMatrix(size)
	local squareSize = size * size
	local arr = {}
	for i = 1, size do
		for j = 1, size do
			--(i-1)*size is like [i]
			-- the + j is like [j]   so arr[i][j]
			arr[(i - 1) * size + j] = 0
		end
		
		arr[ (i - 1) * size + i ] = 1
	end
	
	return arr
end

function createFlatOutMatrix(size)
	local squareSize = size * size
	local myArray = {}
	for i = 1, squareSize do
		myArray[i] = 0
	end
	
	return myArray
end

function timeMultTwo(A, B)
	local start = os.clock()
	local out = multSqMats(A, B)
	local total = os.clock() - start
	fwrite("done!\tTook %.2f seconds!\n", total)
	
	return total
end

function multSqBlockStyle(A, B, blockSize)
	local len = #A
	if len % blockSize ~= 0 then
		print("BAD BLOCK SIZE!\n")
		return -1
	end
	
	local C = createOutMat(len)
	
	--choose outer squares
	for i = 1, len, blockSize do
		for j = 1, len, blockSize do
			for k = 1, len, blockSize do
				--Do multiplication of minisquare
				local iblock = i + blockSize - 1
				for i1 = i, iblock do
					local jblock = j + blockSize - 1
					for j1 = j, jblock do
						local kblock = k + blockSize - 1
						for k1 = k, kblock do
							--This line is from: https://www.netlib.org/utk/papers/autoblock/node2.html
							-- c[i,j] = c[i,j] + a[i,k] * b[k,j]
							
							--This line is from the video using unwrapped vectors.
							--~ C[i1 * len + j1] = C[i1 * len + j1] + ( A[i1 * len + k1] * B[k1 * len + j1] )
							
							C[i1][j1] = C[i1][j1] + ( A[i1][k1] * B[k1][j1] )
						end
					end
				end
				
			end
		end
	end
	
	return C
end

function multFlatBlockMats(A, B, blockSize)
	local totalLen = #A
	local len = math.sqrt(totalLen)
	if len % blockSize ~= 0 then
		print("BAD BLOCK SIZE!\n")
		
		return -1
	end
	
	local C = createFlatOutMatrix(len)
	
	--choose outer squares
	for i = 1, len, blockSize do
		for j = 1, len, blockSize do
			for k = 1, len, blockSize do
				--Do multiplication of minisquare
				local iblock = i + blockSize - 1
				for i1 = i, iblock do
					local jblock = j + blockSize - 1
					for j1 = j, jblock do
						local kblock = k + blockSize - 1
						for k1 = k, kblock do
							--This line is from: https://www.netlib.org/utk/papers/autoblock/node2.html
							-- c[i,j] = c[i,j] + a[i,k] * b[k,j]
							
							--This line is from the video using unwrapped vectors.
							--~ C[i1 * len + j1] = C[i1 * len + j1] + ( A[i1 * len + k1] * B[k1 * len + j1] )
							
							--~ C[i1][j1] = C[i1][j1] + ( A[i1][k1] * B[k1][j1] )
							C[(i1 - 1)*len + j1] = C[(i1 - 1)*len + j1] + ( A[(i1-1)*len + k1] * B[(k1-1)*len + j1] )
						end
					end
				end
				
			end
		end
	end
	
	return C
end

function createOutMat(len)
	--create output matrix
	local C = {}
	for i = 1, len do
		C[i] = {}
		for j = 1, len do
			C[i][j] = 0
		end
	end
	
	return C
end

function multSqMats(A, B)
	local len = #A
	
	local C = createOutMat(len)
	
	--multiply
	for i = 1, len do
		for j = 1, len do
			for k = 1, len do
				C[i][j] = C[i][j] + (A[i][k] * B[k][j])
				--output[i][j] += original[i][k] * intermediate[k][j];
			end
		end
	end
	
	return C
end

function multFlatMats(A, B)
	local totalLen = #A
	local len = math.sqrt(totalLen)
	
	local C = createFlatOutMatrix(len)
	
	--multiply
	for i = 1, len do
		for j = 1, len do
			for k = 1, len do
				C[(i - 1)* len + j] = C[(i - 1)* len + j] + ( A[(i - 1)* len + k] * B[(k - 1)*len + j] )
				--~ C[i][j] = C[i][j] + (A[i][k] * B[k][j])
			end
		end
	end
	
	return C
end


function printFlatMatrix(mat)
	local len = math.sqrt(#mat)
	for i = 1, len do
		for j = 1, len do
			fwrite("%d ", mat[(i - 1) * len + j]  )
		end
		fwrite("\n")
	end
end

function printMatrix(myMat)
	for i = 1, #myMat do
		for j = 1, #myMat[i] do
			fwrite("%d ", myMat[i][j])
		end
		fwrite("\n")
	end
end

function createIDMat(squareSize)
	local idMat = {}
	for i = 1, squareSize do
		idMat[i] = {}
		for j = 1, squareSize do
			idMat[i][j] = 0
		end
		
		idMat[i][i] = 1
	end
	
	return idMat
end

function createRandMat(squareSize)
	local myArray = {}
	for i = 1, squareSize do
		myArray[i] = {}
		for j = 1, squareSize do
			myArray[i][j] = math.random(100)
		end
	end
	
	return myArray
end

--function similar to C printf
function fwrite(fmt, ...)
    return io.write( string.format(fmt, ...) )
end

--------
main()--
--------
