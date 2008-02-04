use inc::Module::Install;
name 'Geography-JapanesePrefectures';
all_from 'lib/Geography/JapanesePrefectures.pm';

requires $_ for (qw/
    version
    List::MoreUtils
/);

build_requires 'Test::Class';
build_requires 'Test::More';
build_requires 'YAML';
use_test_base;
auto_include;
WriteAll;
