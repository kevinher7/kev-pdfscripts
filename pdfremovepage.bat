@echo off
set PYTHONPATH=C:\kev-scripts
cmd /k python -m pdf_editor.pdfremovepage.pdfremovepage %*
exit /B
