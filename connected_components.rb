def count_objects(image)
  num_rows = image.length
  num_cols = image[0].length
  visited = Array.new(num_rows) { Array.new(num_cols, false) }

  count = 0
  (0...num_rows).each do |i|
    (0...num_cols).each do |j|
      if image[i][j] == "1" && !visited[i][j]
        dfs(image, visited, i, j)
        count += 1
      end
    end
  end

  count
end

def dfs(image, visited, row, col)
  num_rows = image.length
  num_cols = image[0].length

  return if row < 0 || row >= num_rows || col < 0 || col >= num_cols
  return if image[row][col] != "1" || visited[row][col]

  visited[row][col] = true

  directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  directions.each do |dir|
    new_row = row + dir[0]
    new_col = col + dir[1]
    dfs(image, visited, new_row, new_col)
  end
end

image = [
  "00010",
  "10010"
]

# It has 2 blobs in the below array.
puts count_objects(image)

image2 = [
  "0000000000000000000000",
  "0001100000001100000000",
  "0001100000001100000000",
  "0000110000001100000000",
  "0000000000000000000000",
  "0000011000000000000000",
  "0000000000000000111000",
  "0001100000000001111000",
  "0000110000001000000000",
  "0000011000101100000000",
  "0000000000111100000000"
]

# It has 6 blobs in the below array.
puts count_objects(image)