
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.037.
use strict;
use warnings;

use Module::Build 0.28;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.28"
  },
  "configure_requires" => {
    "Module::Build" => "0.28"
  },
  "dist_abstract" => "list changes for CPAN modules",
  "dist_author" => [
    "Tatsuhiko Miyagawa <miyagawa\@bulknews.net>"
  ],
  "dist_name" => "cpan-listchanges",
  "dist_version" => "0.07",
  "license" => "perl",
  "module_name" => "cpan::listchanges",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Algorithm::Diff" => 0,
    "CPAN::DistnameInfo" => 0,
    "LWP" => 0,
    "Module::Metadata" => 0,
    "Pod::Usage" => 0,
    "Try::Tiny" => 0,
    "YAML" => 0,
    "perl" => "5.008001"
  },
  "script_files" => [
    "script/cpan-listchanges"
  ],
  "test_requires" => {
    "Test::More" => "0.88",
    "Test::Requires" => 0
  }
);


my %fallback_build_requires = (
  "Module::Build" => "0.28",
  "Test::More" => "0.88",
  "Test::Requires" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
