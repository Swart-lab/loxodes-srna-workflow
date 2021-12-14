# If rules are split across multiple snakefiles, list them here
# include: "rules-A"
# include: "rules-B"

rule all:
    input:
        expand("{sample}.out", sample=config['samplenames'])

rule dosomething:
    input:
        lambda wildcards: config['rawdata'][wildcards.sample]
    output:
        "{sample}.out"
    # conda: "example.yml"
    threads: 1
    shell:
        "cat {input} > {output}"
