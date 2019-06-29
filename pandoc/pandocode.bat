@echo off
set pandoc_setting=%userprofile%\.pandoc\template.latex
if "%1" == "yaml" goto yaml

if not "%3" == "" goto comm1
if "%3" == "" goto check

:check
if not "%2" == "" goto comm2
if "%2" == "" goto usage

:usage
echo USAGE: pandocode x.md x.pdf [template.latex]
echo Default Template: %pandoc_setting%
goto :eof

:comm1
echo  pandoc %1 \
echo     -o %2 \
echo     --template=%3 \
echo     --latex-engine=xelatex \
echo     --highlight-style tango
echo.
pandoc %1 -o %2 --template=%3 --latex-engine=xelatex  --highlight-style tango
goto :eof

:comm2
echo  pandoc %1 \
echo     -o %2 \
echo     --template="%pandoc_setting%" \
echo     --latex-engine=xelatex \
echo     --highlight-style tango
echo.
pandoc %1 -o %2 --template="%pandoc_setting%" --latex-engine=xelatex  --highlight-style tango
goto :eof

:yaml
echo YAML:
echo.
echo ---
echo header-includes:
echo.
echo - \usepackage{listings}
echo - \usepackage{accsupp}
echo.
echo - \newcommand\emptyaccsupp[1]{\BeginAccSupp{ActualText={}}#1\EndAccSupp{}}
echo - \lstset{numbers = left, numberstyle=\emptyaccsupp}
echo.
echo - \usepackage{booktabs}
echo - \usepackage{makecell}
echo.
echo - \usepackage{fvextra}
echo - \DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines,commandchars=\\\{\}}
echo.
echo output:
echo   pdf_document:
echo     toc: false
echo     template: template.latex
echo ---
echo.
goto :eof