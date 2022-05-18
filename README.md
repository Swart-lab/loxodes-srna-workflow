Template workflow folder for Snakemake pipeline
===============================================

After cloning this repository, you should change the name of the folder as
appropriate, and update the remote URL of the repository to a new one for your
project.


Suggested setup
---------------

```bash
git clone git@github.com:Swart-lab/snakemake-template.git
mv snakemake-template my-project # rename project folder
cd my-project
mkdir data # folder to put project data, gitignored
mkdir envs # folder for Conda envs produced by workflow, gitignored
mkdir tmp  # folder for temp files, gitignored
mkdir nb   # folder for computational notebooks etc.
git remote remove origin # remove template repo as a remote
```

Edit the files `run_snakemake.sh` and/or `run_snakemake_sge.sh` to include
absolute paths to the working folder and to a Conda environment with Snakemake,
and modify other settings (e.g. max number of CPUs) as required.

Snakemake rules and config files are in the `workflow/` subfolder.


Running workflow
----------------

To run on a local server, use `./run_snakemake.sh` script, and add rule names
and additional parameters, e.g. `./run_snakemake.sh --dryrun`.

[Documentation for `run_snakemake_sge.sh` TK]
