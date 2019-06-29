---
header-includes:

- \usepackage{listings}
- \usepackage{accsupp}

- \newcommand\emptyaccsupp[1]{\BeginAccSupp{ActualText={}}#1\EndAccSupp{}}
- \lstset{numbers = left, numberstyle=\emptyaccsupp}

- \usepackage{booktabs}
- \usepackage{makecell}

- \usepackage{fvextra}
- \DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines,commandchars=\\\{\}}

output:
  pdf_document:
    toc: false
    template: template.latex
---

# YAML

~~~ bash

pandoc codedemo_yaml.md \
	-o codedemo_yaml.pdf \
	--template=pm-template.latex \
	--latex-engine=xelatex \
	--highlight-style tango

~~~

~~~ latex
\usepackage{fontspec} 	% 允許設定字體
  \usepackage{xeCJK} 		% 分開設置中英文字型
  \setCJKmainfont{Noto Sans CJK DemiLight} 	% 設定中文字型
  \setmainfont{Consolas} 	% 設定英文字型
  \setromanfont{Consolas} 	% 字型
  \setmonofont{Consolas}
  \selectfont 	% 行距
  \XeTeXlinebreaklocale "zh" 	% 針對中文自動換行
  \XeTeXlinebreakskip = 0pt plus 1pt % 字與字之間加入0pt至1pt的間距，確保左右對整齊
  \parindent 0em 		% 段落縮進
  \setlength{\parskip}{5pt} 	% 段落之間的距離
  \linespread{1.3}
  \ifxetex
    \usepackage{xltxtra,xunicode}
  \fi
  \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
  \newcommand{\euro}{€}
$if(mainfont)$
    \setmainfont{$mainfont$}
$endif$
$if(sansfont)$
    \setsansfont{$sansfont$}
$endif$
$if(monofont)$
    \setmonofont{$monofont$}
$endif$
$if(mathfont)$
    \setmathfont{$mathfont$}
$endif$
\fi
~~~