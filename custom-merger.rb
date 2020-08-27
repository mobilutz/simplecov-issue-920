require 'simplecov'

results = []
all_results = Dir['./.resultset*.json']
all_results.each do |result_file_name|
  puts "Processing #{result_file_name}"
  results += SimpleCov::Result.from_hash(JSON.parse(File.read(result_file_name)))
end

SimpleCov::ResultMerger.merge_results(*results).format!
