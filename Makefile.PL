    use ExtUtils::MakeMaker;
    WriteMakefile
      ('DISTNAME' => 'Template-Plugin-Textile',
       'VERSION' => '1.01',
       'PL_FILES' => {},
       'PREREQ_PM' => {
			'Text::Textile' => '0.5',
			'Template' => '2',

		      },
      );
