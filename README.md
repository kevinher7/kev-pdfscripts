# PDF Scripts

PDF Scripts is a project that aims to allow users to work with PDF files from anywhere in the computer by using a few commands in the terminal.

This is accomplished by the use of batch (`.bat`) files and enviroment variables in windows.

# Pre-Requisites

The only pre-requisites are

1. `PyPDF2`
2. Ghostscript

To install PyPDF2 simply run

```bash
pip install PyPDF2
```

and to install Ghostcript go to the official website https://www.ghostscript.com/releases/gsdnld.html

# Setup

After the required dependecies have been installed, follow the next steps

1. Clone (or manually paste) this whole repository somewhere in your PC

2. Add this directory to the PATH environmental variable

3. Go into the `.bat` files and change the value of `PYTHONPATH` to the project directory (aka the same directory added to the PATH).

This step can be replaced by adding the PYTHONPATH environmental variables and adding the directory but although this worked well for the command prompt, this setting was getting overwriten in powershell. In the end this can be solved by adding the PYTHONPATH variable to the powershell `$PROFILE`, by running `notepad.exe $PROFILE` and then adding `$env:PYTHONPATH = "C:\path-to-your\folder"`.

However, this was to much hassle and could fail in other terminals and that's why I think it's better to set the variable inside the `.bat` files.

After this is done (up to step 3 or the alternative), you should be able to run the name of the `.bat` files as commands in the terminal.

A command would look something like this

```bash
pdfmerge
```

This (in the current version) will take all pdf files in the current directory (in the terminal) and merge them into a single file in an `output` folder.

# Optional Steps

4. The name of the command to run on the terminal can be replaced by your own, just change the name of the batch file to fit your needs. For example going from `pdfmerge.bat` to `merge.bat` would change the required command to

```bash
merge
```

# TODO

## Must

-   Add more Functionalities (remove pages, etc)

## Maybe

-   Make a CLI out of this package
-   Look for alternatives of compression
