# XML samples and schema files (XSD and relaxng) of AlpineBits.

Each official AlpineBits release is tagged with its name, please refer to the tagged commits (or to the release packages) if you want to get the files of a specific release.

The files on master may not reflect any actual release, particularly they may be work in progress for the upcoming releases.

There are however some characteristics that are expected to be valid for every committed version:
- all files should be syntactically valid (e.g. in case of XML files they should be well-formed)
- all XML files should validate against the schemas that are in the repository at the same revision 

## Please follow the following rules in case you want to contribute to this repository:
- check your contribution for well-formedness 
- if you commit XML samples, check that they validate against the provided schema files
- if you commit XML samples for new messages that are part of a new release, commit the updated schema files first
- commits may consist of partial changes, but must respect the rules outlined above
