#!/bin/bash
# Install Pattern Lab

# Remove existing PL directory
rm -rf pattern-lab

# Install PL
# composer create-project -n pattern-lab/edition-twig-standard pattern-lab

# Clone and install PL
git clone https://github.com/pattern-lab/edition-php-twig-standard.git pattern-lab
cd pattern-lab && composer install

# Delete the default source directory
rm -rf pattern-lab/source

# Symlink our components directory to the source location we just deleted
ln -s ../components pattern-lab/source