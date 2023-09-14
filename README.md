small RNA read library data analysis
====================================

Snakemake workflow to process small RNA read libraries for Loxodes magnus; read
libraries and local file paths are listed in `workflow/config.yaml`, these
should be updated if workflow is run elsewhere.


Related datasets
----------------

[To be updated]


Running workflow
----------------

Snakemake rules and config files are in the `workflow/` subfolder.

To run on a local server, use `./run_snakemake.sh` script, and add rule names
and additional parameters, e.g. `./run_snakemake.sh --dryrun`.
