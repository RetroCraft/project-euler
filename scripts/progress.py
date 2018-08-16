#!/usr/bin/env python3

# Script for generating PROGRESS.md
# Run on pre-commit

import re
from os import walk

solutions = {}
languages = {}
for (dirpath, dirnames, filenames) in walk('src'):
    if (dirpath == 'src' or dirpath == 'src/esoterics'):
        continue
    language = dirpath[4:].title()  # remove "src/" and capitalize
    problemFiles = filter(lambda name: re.match(
        r'Problem\d{3}\..+', name), filenames)
    problemNums = list(
        map(lambda name: int(re.search(
            r'\d{3}', name).group()), problemFiles)
    )
    for num in problemNums:
        if num in solutions:
            solutions[num].append(language)
        else:
            solutions[num] = [language]
        if language in languages:
            languages[language] += 1
        else:
            languages[language] = 1

overview = ''
for key, value in sorted(languages.items(), reverse=True):
    overview += '|{}|{}|\n'.format(key, value)

problems = '|Problem|{}|\n'.format('|'.join(languages.keys()))
problems += '|---' * len(languages) + '|---|\n'

for i in range(1, max(solutions.keys()) + 1):
    problems += '|{}|'.format(i)
    for key in languages.keys():
        # handle unsolved problems
        if i in solutions:
            problems += '✔️|' if key in solutions[i] else '❌|'
        else:
            problems += '❌|'
    problems += '\n'

f = open('progress.md', 'w+')

out = '''# Progress Tracking

## Overview

|Language|Solutions|
|---|---|
{}
## Problems
{}'''.format(overview, problems)

f.write(out)
f.close()
