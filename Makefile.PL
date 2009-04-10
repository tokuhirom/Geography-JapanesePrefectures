use inc::Module::Install;
name 'Geography-JapanesePrefectures';
all_from 'lib/Geography/JapanesePrefectures.pm';

requires 'List::MoreUtils';

auto_set_repository();

author_tests('xt');

build_requires 'Test::Class';
build_requires 'Test::More';
build_requires 'YAML';
use_test_base;
auto_include;
WriteAll;
