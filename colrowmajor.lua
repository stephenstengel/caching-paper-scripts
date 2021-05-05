--Stephen Stengel
--A program that shows the effect of caching.
--Doing operations with large matricies can cause many cache misses. By
--selecting a small square of a matrix, you can load all its data into
--cache. This reduces the number of cache misses.

--Todo: make a flat matrix version of the functions. This should increase speed by another magnitude.

function main()
	math.randomseed( os.time() )
	local squareSize = tonumber(arg[1]) or 10 --if no input, default 10
	local iterations = tonumber(arg[2]) or 1000 --if no input, default 1000
	
	io.write( string.format("squareSize: %d\n", squareSize) )
	io.write( string.format("iterations: %d\n", iterations) )
	
	--Start tests
	fwrite("Timing Row-Major...")
	timeMakeRandom(iterations, squareSize, createRandMatRowMaj)
	
	fwrite("Timing Column-Major...")
	timeMakeRandom(iterations, squareSize, createRandMatColMaj)
	
end


function timeMakeRandom(iterations, squareSize, createFunction)
	local lowtime = math.huge
	for i = 1, 5 do
		local start = os.clock()
		local anArray = createZeroArray(squareSize)
		for j = 1, iterations do
			createFunction(anArray)
		end
		
		local total = os.clock() - start

		if total < lowtime then
			lowtime = total
		end
	end
	
	--~ fwrite(" done!\tLowest time of five trials: %.2f seconds!\n", lowtime)
	fwrite(" done!\tLowest time of five trials: %f seconds!\n", lowtime)
	
	return total
end


function printMatrix(myMat)
	for i = 1, #myMat do
		for j = 1, #myMat[i] do
			fwrite("%d ", myMat[i][j])
		end
		fwrite("\n")
	end
end


function createZeroArray(len)
	local outArray = {}
	for i = 1, len do
		outArray[i] = {}
		for j = 1, len do
			outArray[i][j] = 0
		end
	end
	
	return outArray
end

function createRandMatColMaj(myArray)
	local len = #myArray
	for i = 1, len do
		for j = 1, len do
			myArray[j][i] = math.random(100)
		end
	end
end

function createRandMatRowMaj(myArray)
	local len = #myArray
	for i = 1, len do
		for j = 1, len do
			myArray[i][j] = math.random(100)
		end
	end
end

--function similar to C printf
function fwrite(fmt, ...)
    return io.write( string.format(fmt, ...) )
end

--------
main()--
--------
