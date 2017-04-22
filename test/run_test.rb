base_dir = File.expand_path(File.join(File.dirname(__FILE__), '..'))
lib_dir = base_dir
test_dir = File.join(base_dir, 'test')

$LOAD_PATH.unshift(lib_dir)

require('test/unit')

exit(Test::Unit::AutoRunner.run(true, test_dir))
