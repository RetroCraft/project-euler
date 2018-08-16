#!/usr/bin/env python3

# Script for generating PROGRESS.md
# Run on pre-commit

import re
from os import walk

solutions = {}
languages = {}
extensions = {'Haskell': 'hs', 'Mathematica': 'wls', 'Python': 'py'}
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
    problems += '|[{0}](https://projecteuler.net/problem={0})|'.format(i)
    for lang in languages.keys():
        # handle unsolved problems
        if i in solutions and lang in solutions[i]:
            problems += '[✔️](src/{}/Problem{:03d}.{})|'.format(lang.lower(), i,
                                                                extensions[lang] if lang in extensions else lang.lower())
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

Click a checkmark to see the source code, click a number to see the problem.

{}'''.format(overview, problems)

f.write(out)
f.close()
