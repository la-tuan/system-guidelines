all:
	cat ../README.md ../AppDeveloperGuideline.md ../AWSInfraBuildGuideline.md ../SecurityGuideline.md ../TestGuideline.md ../AppLogGuideline.md ../ReleaseGuideline.md ../OpsGuideline.md ../OutsouceDevelopmentGuideline.md > system-guidelines.md
	rm -f system-guidelines-compiled.md
	for line in $$(cat system-guidelines.md | tr "\t" ' ' | tr ' ' '+' | tr "\n" '|' | sed -re 's/(#+)/\n\1/g' | sed -e 's/[+| ]*$$//g'); do echo $$line >> system-guidelines-compiled.md; done

clean:
	rm -f system-guidelines.md system-guidelines-compiled.md
