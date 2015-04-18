%%% Created by Zhao Zhen-Hua zhaozhh02@gmail.com 2011.11.29
%% ----------------------------------------------------------------------
%% ----------------------------------------------------------------------
%% Edited by mosesnow 2013-01-20
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%%
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{LZUthesis}
  [2011/012/01  LZUthesis
   document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{CASmthesis}}
\ProcessOptions
\LoadClass{CASmthesis}[2005/11/25]


\AtEndOfPackage{\makeatletter\input{LZUthesis.cfg}\makeatother}


%双线页眉      
\renewcommand{\headrulewidth}{0.5pt}  
\newcommand{\headrulewidthh}{1.0pt}                             
\def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi%
\hrule\@height\headrulewidthh\@width\headwidth\vskip1pt%上面线为1pt粗  
\hrule\@height\headrulewidth\@width\headwidth  %下面0.5pt粗            
\vskip-2\headrulewidth\vskip-1pt}      %两条线的距离1pt        
\vspace{6mm}}     %双线与下面正文之间的垂直间距              


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%定义清理双页
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{lzuempty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

  
%重新定义空白页，让其只显示页码 
\fancypagestyle{lzuempty}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\headrulewidthh}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
  \if@twoside
    \fancyfoot[LE,RO]{\zihao{-5} ~\thepage~}
  \else
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%\setlength{\itemsep}{3pt plus1pt minus2pt}          % 连续items之间的距离.
%\setlength{\floatsep}{1pt plus1pt minus1pt}         % 图形之间或图形与正文之间的距离
%\setlength{\intextsep}{2pt plus 2pt minus 2pt}
%\setlength{\abovecaptionskip}{1pt plus1pt minus1pt} % 图形中的图与标题之间的距离
%\setlength{\belowcaptionskip}{1pt plus1pt minus1pt} % 表格中的表与标题之间的距离
%\setlength{\headsep}{5pt}



%\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}        % 字号设置
%\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}    % 字号设置
%\newcommand{\yichu}{\fontsize{32pt}{\baselineskip}\selectfont}         % 字号设置
%\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}         % 字号设置
%\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}         % 字号设置
%\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}     % 字号设置
%\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}     % 字号设置
%\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}         % 字号设置
%\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}     % 字号设置
%\newcommand{\sectionzihao}{\fontsize{11pt}{\baselineskip}\selectfont}  % 字号设置
%\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}       % 字号设置
%\newcommand{\xiaowuhao}{\fontsize{10pt}{\baselineskip}\selectfont}     % 字号设置
%\newcommand{\liuhao}{\fontsize{8pt}{\baselineskip}\selectfont}         % 字号设置
%\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}       % 字号设置


\renewcommand{\baselinestretch}{1.39} %按要求相当于word设置行间距为20磅


\newcommand\datebeginAndEnd[1]{\def\LZU@value@\datebeginAndEnd{#1}}
\newcommand\lzuthesis[1]{\def\LZU@value@lzuthesis{#1}}
\newcommand\direction[1]{\def\LZU@value@direction{#1}}
\newcommand\englishtitleadd[1]{\def\LZU@value@englishtitleadd{#1}}
\newcommand\titleadd[1]{\def\LZU@value@titleadd{#1}}


\renewcommand*\tablename{ \zihao{5}\CTEX@tablename }%调整标题的字号
\renewcommand*\figurename{ \zihao{5}\CTEX@figurename}%调整标题的字号

%定义单行完整标题
\def\LZU@value@fulltitle{\CAST@value@title}
\def\LZU@value@fulletitle{\CAST@value@englishtitle}


%重定义单行maketitle
\renewcommand\maketitle{%
\begingroup
\renewcommand{\baselinestretch}{1.667}
  \cleardoublepage
  \thispagestyle{empty}
  \pagenumbering{Roman}
  \begin{center}
    \songti\zihao{-4}
     \begin{flushleft}
      \LZU@label@classification~
      \CASTunderline[0pt]{\CAST@value@classification}
       \hskip 9cm
      \LZU@label@confidential~
      \CASTunderline[0pt]{\CAST@value@confidential}
   \end{flushleft}
    \vskip 10pt

      % Requires \usepackage{graphicx}
    \includegraphics[width=7.4cm]{lzu.eps}\\

   \bf \zihao{3}\LZU@label@thesis
    \vskip 1.0cm
    \zihao{4}
    \def\tabcolsep{1pt}
   \renewcommand{\arraystretch}{1.4}%改变表格的行间距
      \begin{tabular}{ll}
      \LZU@label@titleCn &
       {\CASTunderline[297pt]{\bfseries \zihao{3}\CAST@value@title}}\\
      \LZU@label@titleEn &
      {\CASTunderline[297pt]{\bfseries \zihao{3}\CAST@value@englishtitle}}\\
      \LZU@label@author &
      {\CASTunderline[297pt]{\CAST@value@author}}\\
      \LZU@label@major &
      {\CASTunderline[297pt]{\CAST@value@major}}\\
      \LZU@label@direction&
      {\CASTunderline[297pt]{\LZU@value@direction}} \\
      \LZU@label@degree &
      {\CASTunderline[297pt]{\CAST@value@degree}} \\
      \LZU@label@advisor &
      {\CASTunderline[297pt]{\CAST@value@advisor}} \\
      \LZU@label@datebeginAndEnd &
      {\CASTunderline[297pt]{\LZU@value@\datebeginAndEnd}}\\
       \LZU@label@submitdate &
      {\CASTunderline[297pt]{\CAST@value@submitdate}}\\
      \LZU@label@defenddate &
      {\CASTunderline[297pt]{\CAST@value@defenddate}}\\
      \LZU@label@degreedate &
      {\CASTunderline[297pt]{\CAST@value@degreedate}}
    \end{tabular}

      \vskip 1.5 cm
      \zihao{5}\LZU@label@schooladdress
  \end{center}
  \clearpage
    \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \definecolor{light-gray}{gray}{0.86}
        \noindent
        \textcolor{light-gray}{
        Typeset by \LaTeXe{} at \CTEX@todayold \\
        With package \texttt{LZUthesis} based on \texttt{CASthesis}{-v0.2} of C\TeX{}.ORG\\
        给时光以微笑，给岁月以宽容。
        }
      \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
\endgroup
}


%%双行标题独立设置
\DeclareOption{longtitle}{
%定义双行完整标题
\def\LZU@value@fulltitle{\CAST@value@title\LZU@value@titleadd}
\def\LZU@value@fulletitle{\CAST@value@englishtitle~\LZU@value@englishtitleadd}

\renewcommand\maketitle{%
\begingroup
  \linespread{1.667}\selectfont
  \cleardoublepage
  \thispagestyle{empty}
  \pagenumbering{Roman}
  \begin{center}
  \begin{flushleft}
    \songti\zihao{-4}
      \LZU@label@classification~
      \CASTunderline[0pt]{\CAST@value@classification}
        \hskip 9cm
      ~~\LZU@label@confidential~
      \CASTunderline[0pt]{\CAST@value@confidential}\\
   \end{flushleft}
    \vskip 10pt

      % Requires \usepackage{graphicx}
    \includegraphics[width=7.4cm]{lzu.eps}\\

   \bf \zihao{3}\LZU@label@thesis
    \vskip 1.0cm
   % \vskip \stretch{5}
    \zihao{4}
    \def\tabcolsep{1pt}
%    \def\arraystretch{1.8}
    \renewcommand\arraystretch{1.25}
    \begin{tabular}{llcrl}
      \LZU@label@titleCn &
      \multicolumn{4}{l} {\CASTunderline[297pt]{\bfseries \zihao{3}\CAST@value@title}}\\
       &
      \multicolumn{4}{l} {\CASTunderline[297pt]{\bfseries \hspace{0.3pt} \zihao{3}\LZU@value@titleadd}}\\
      \LZU@label@titleEn &
      \multicolumn{4}{l} {\CASTunderline[297pt]{\bfseries \zihao{3}\CAST@value@englishtitle}}\\
       &
      \multicolumn{4}{l} {\CASTunderline[297pt]{\bfseries \zihao{3}\LZU@value@englishtitleadd}}\\
      \LZU@label@author &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@author}}\\
      \LZU@label@major &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@major}}\\
      \LZU@label@direction&
      \multicolumn{4}{l}{\CASTunderline[297pt]{\LZU@value@direction}} \\
      \LZU@label@degree &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@degree}} \\
      \LZU@label@advisor &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@advisor}} \\
      \LZU@label@datebeginAndEnd &\multicolumn{4}{l}{\CASTunderline[297pt]{\LZU@value@\datebeginAndEnd}}\\
       \LZU@label@submitdate &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@submitdate}}\\
      \LZU@label@defenddate &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@defenddate}}\\
      \LZU@label@degreedate &
      \multicolumn{4}{l}{\CASTunderline[297pt]{\CAST@value@degreedate}}

    \end{tabular}
      \vskip 1.4 cm
      \zihao{5}\LZU@label@schooladdress
  \end{center}

  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \definecolor{light-gray}{gray}{0.86}
        \noindent
        \textcolor{light-gray}{
        Typeset by \LaTeXe{} at \CTEX@todayold \\
        With package \texttt{LZUthesis} based on \texttt{CASthesis}{-v0.2} of C\TeX{}.ORG\\
        给时光以微笑，给岁月以宽容。
        }
      \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
\endgroup
}

}
\ProcessOptions


%定义声明
\newcommand\makestatement{
\begingroup
\linespread{1.5}\selectfont
\thispagestyle{empty}
\begin{center}
\textbf{\Large 原~创~性~声~明}
\par\end{center}{\Large \par}

本人郑重声明：本人所呈交的学位论文，是在导师的指导下独立进行研究所取得的成果。学位论文中凡引用他人已经发表或未发表的成果、数据、观点等，均已明确注明出处。除文中已经注明引用的内容外，不包含任何其他个人或集体已经发表或撰写过的科研成果。对本文的研究成果做出重要贡献的个人和集体，均已在 文中以明确方式标明。

本声明的法律责任由本人承担。

\vskip 1.5cm

\begin{center}
\begin{tabular}{clcl}
论\hfill{}文\hfill{}作\hfill{}者\hfill{}签\hfill{}名 ： & \quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\quad{} & \quad{}\quad{}\quad{}\quad{}日\hfill{}期： & \quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\tabularnewline
\cline{2-2} \cline{4-4}
 &  &  & \tabularnewline
\end{tabular}
\par\end{center}

\vskip 1.5cm

\begin{center}
\textbf{\Large 关于学位论文使用授权的声明}{\Large{} }
\par\end{center}{\Large \par}

本人在导师指导下所完成的论文及相关的职务作品，知识产权归属兰州大学。本人完全了解兰州大学有关保存、使用学位论文的规定， 同意学校保存或向国家有关部门或机构送交论文的纸质版和电子版，允许论文被查阅和借阅；本人授权兰州大学可以将本学位论文的
全部或部分内容编入有关数据库进行检索，可以采用任何复制手段保存和汇编本学位论文。本人离校后发表、使用学位论文或与该论 文直接相关的学术论文或成果时，第一署名单位仍然为兰州大学。

本学位论文研究内容：

$\square$ 可以公开

$\square$ 不宜公开，已在学位办公室办理保密申请，解密后适用本授权书。

（请在以上选项内选择其中一项打“$\surd$”）

\vskip 1.5cm
\renewcommand\arraystretch{0.76}
\begin{tabular}{clcl}
论\hfill{}文\hfill{}作\hfill{}者\hfill{}签\hfill{}名 ： &  \quad{}\quad{}\quad{}\quad{}\quad{}\quad{} & \quad{}\quad{}\quad{}\quad{}导\hfill{}师\hfill{}签\hfill{}名 ： & \quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\tabularnewline
\cline{2-2} \cline{4-4}
 &  &  & \tabularnewline
日\hfill{}期： &  \quad{}\quad{}\quad{}\quad{}\quad{}\quad{} & \quad{}\quad{}\quad{}\quad{}日\hfill{}期： & \quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\quad{}\tabularnewline
\cline{2-2} \cline{4-4}
 &  &  & \tabularnewline
\end{tabular}

  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
      ~~
      \end{footnotesize}
    \fi
    \cleardoublepage
  \fi

\endgroup
}


\fancypagestyle{lzu}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0.5pt}%
  \renewcommand{\headrulewidthh}{1.0pt}%
  \renewcommand{\footrulewidth}{0pt}%
  % \fancyhead[RE]{\small \CAST@value@titlemark}
  %\fancyhead[LO]{\small \leftmark}
  \rhead{\zihao{-5} ~\LZU@value@fulltitle~}%页眉
  \lhead{\zihao{-5} ~\LZU@value@lzuthesis~}%页脚
 % \fancyhead[LE,RO]{\small ~\CAST@value@title~}
  \if@twoside
    \fancyfoot[LE,RO]{\zihao{-5} ~\thepage~}
  \else
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi
}

\pagestyle{lzuempty}



  \renewenvironment{abstract}
  {\chapter[\CAST@label@abstract]{\LZU@value@fulltitle}
   \thispagestyle{lzuempty}
  \begin{center}
      \vskip 0.68 cm
      {\bfseries \zihao{3} \heiti \CAST@label@abstract}
      \vskip 0.8 cm
      %\phantomsection %加这个命令后，目录中的超链接才指向正确的页码
      %\addcontentsline{toc}{chapter}{\textbf{\CAST@label@abstract}}
   \end{center}
   
  }
  



\renewenvironment{englishabstract}
  {\chapter[\CAST@label@englishabstract]{\LZU@value@fulletitle}
   \thispagestyle{lzuempty}
  \begin{center}
      \vskip 0.68 cm
      {\bfseries \zihao{3}\CAST@label@englishabstract}
      \vskip 0.8 cm
      %\phantomsection %加这个命令后，目录中的超链接才指向正确的页码
      %\addcontentsline{toc}{chapter}{\textbf{\CAST@label@englishabstract}}
    \end{center}
  
  }



\renewenvironment{thanks}
  {\Nchapter{\CAST@label@thanks}
  \fangsong \zihao{-4} \linespread{1.1}\selectfont}
  {\cleardoublepage}




%%http://hi.baidu.com/deyaliu/blog/item/4c986632df16b4220b55a932.html
\renewcommand\chapter{%目的是在章的第一叶显示页眉和页脚
                   \if@openright\cleardoublepage \else\clearpage
                   \fi
                    \thispagestyle{lzu}%手动一次指定
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter
                    }

\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname}%
    \thispagestyle{lzuempty}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }

%改变图表的编号格式
\renewcommand{\thefigure}{\thechapter-\@arabic\c@figure}
\renewcommand{\thetable}{\thechapter-\@arabic\c@table}   

\endinput
%%
%% End of file `LZUthesis.cls'.
