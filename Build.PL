use Module::Build;

my $build = new Module::Build
(
 module_name => 'Template::Plugin::Textile',
 license     => 'perl',
 requires    => {
	          Template      => 2.00,
		  Text::Textile => 0.5,
	        },
 create_makefile_pl => 'traditional',
);

$build->create_build_script;

