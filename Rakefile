task(:clean) {
  sh('rm -vf db/db.sqlite')
}

file('db/db.sqlite' => [:clean]) {
  # Show the version because we're using the system Ruby, not the RVM one.
  sh('ruby --version')
  sh('ruby db/create_books.rb')
  sh('ruby db/seed.rb')
}

# Match the task name in the checkpoint.
namespace(:db) {
  task(seed: ['db/db.sqlite'])
}
