# GEM-hot1a3

[![memote tested](https://img.shields.io/badge/memote-tested-blue.svg?style=plastic)](https://hgscott.github.io/mit1002-model)

This repo contains the *Alteromonas macleodii* HOT1A3 model, and code associated with its creation, curation, and testing.

The model was generated using RefSeq genome for HOT1A3 (Accession Number: NZ_CP012202.1), accessible via KBase.
The narrative for generating the draft model, is available here: https://narrative.kbase.us/narrative/208263

This repo uses GtiHub actions to automatically test the model.
Upon manual trigger:
1. A new MEMOTE report is generated, and saved as "index.html"
2. Run custom tests
    * Validate the SBML file
    * Test for growth on no carbon sources
    * Test known growth phenotypes, and regenerate the experimental vs predicted growth heatmap figure
    * Run the MEMOTE test to search for ATP generating cycles
3. The model is exported to JSON and excel formats

Note: MACAW is **not** run as part of the action due to the longer run time of the dilution test.
To run MACAW use:
```
python run_macaw.py
```

## To contribute to the model
1. Make a GitHub account
2. Make a fork/branch of this repo
3. Make your edits to the model on the XML file
4. Open a pull request