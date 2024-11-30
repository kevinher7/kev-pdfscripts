@echo off
set PYTHONPATH=C:\kev-scripts

:GETOPTS

cmd /k python -m pdf_editor.pdfcompress.pdfcompress %*
exit /B
