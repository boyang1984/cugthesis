% !TEX encoding = System
%%
%% This file `CUGthesis.cls', which is written by Yang Bo based on `CASthesis.cls',
%% is the configuration file of the CUGthesis package with LaTeX2e.
%%
%% Author: Yang Bo, Institute of Geophysics & Geomatics, China Univ. of Geoscience, Wuhan, China.
%% Version: 0.1
%% Date: 2011/04/23
%% Copyright 2011-2015
%% Special thanks to Dr. Linyun Wu and Dr. Yinnian Wu
%% 
%% This file was generated from file(s) of the CUGthesis package project.
%% ----------------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CUGthesis}
  [2011/04/23 v0.1 CUGthesis document class]
%%˶��ѡ��
\newif\ifismaster\ismasterfalse
% \newif\ifismaster\ismastertrue
\DeclareOption{undergraduate}{\typeout {undergraduate}}
\DeclareOption{master}{\ismastertrue}
\DeclareOption{doctor}{\ismasterfalse}
%%������Ϣѡ��
\newif\ifCUGT@fundinfo \CUGT@fundinfotrue
\DeclareOption{nofundinfo}{\CUGT@fundinfofalse}
%%�Ű�����ѡ��
\newif\ifCUGT@dvips \CUGT@dvipsfalse
\DeclareOption{dvips}{\CUGT@dvipstrue}
\DeclareOption{dvipdfm}{\CUGT@dvipsfalse}
\DeclareOption{pdftex}{\CUGT@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%%����ctexbook�ĵ���
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}[2005/11/25]
%%����ҳ�����
\RequirePackage[paperheight=27.000 true cm,paperwidth=19.500 true cm,
top=2.5 true cm,bottom=2.5 true cm,left=2.4 true cm,right=2.4 true cm,
headsep=10pt]
{geometry}
%%���غ��
%% check pdfTeX mode
\RequirePackage{ifpdf,ifxetex}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage{subfigure}
%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{hypernat}  
%% caption packages
\RequirePackage{caption2}
%% enumitem package
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\RequirePackage{ccmap}
\RequirePackage{times}
%%����Ϊ�Ǳ���������ɾ��%%%
\RequirePackage{listings}
\RequirePackage{booktabs}

%%����Ϊ�Ǳ���������ɾ��%%%


%% packages and settings depend on PDF mode
\ifxetex
  \RequirePackage[xetex]{hyperref}
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifCUGT@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
      \RequirePackage[dvipdfm]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=blue,%
               citecolor=blue,%
              plainpages=false,%
            pdfstartview=FitH}

%%���ز����ļ�
\AtEndOfPackage{\makeatletter\input{CUGthesis.cfg}\makeatother}
%%�Զ�������
%%ͼ��
\renewcommand{\captionlabeldelim}{} %������  "ͼ(��)2: ʾ��" �еļ������,�� ":" ,���ﶨ��Ϊ��
\renewcommand{\captionlabelsep}{\hspace{1em}} %����ͼ�����������ļ������
\renewcommand{\captionlabelfont}{\songti\zihao{-5}} %����ͼ����ǩ������
\renewcommand{\captionfont}{\songti\zihao{-5}} %����ͼ���������ݵ�����

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
%\bibliographystyle{plain}
\newcommand\CUGTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CUGT@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CUGTfiledate{#1}%
  \def\CUGTfileversion{#2}%
  \def\CUGTfileinfo{#3}}%
\expandafter\ifx\csname ver@CUGthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_CUGthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@CUGthesis.cls\endcsname}
\fi
\expandafter\CUGT@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CUGT@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CUGTunderline{\@ifnextchar[\CUGT@underline\CTEXunderline}
\newcommand\schoolnumber[1]{\def\CUGT@value@schoolnumber{#1}}
\newcommand\studentnumber[1]{\def\CUGT@value@studentnumber{#1}}
\newcommand\classification[1]{\def\CUGT@value@classification{#1}}
\newcommand\confidential[1]{\def\CUGT@value@confidential{#1}}
\newcommand\UDC[1]{\def\CUGT@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CUGT@value@serialnumber{#1}}
\newcommand\school[1]{\def\CUGT@value@school{#1}}
\newcommand\degree[1]{\def\CUGT@value@degree{#1}}
\renewcommand\title[2][\CUGT@value@title]{%
  \def\CUGT@value@title{#2}
  \def\CUGT@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\CUGT@value@author{#1}}
\newcommand\advisor[1]{\def\CUGT@value@advisor{#1}}
\newcommand\fund[1]{\def\CUGT@value@fund{#1}}
\newcommand\advisorinstitute[1]{\def\CUGT@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\CUGT@value@major{#1}}
\newcommand\submitdatechs[1]{\def\CUGT@value@submitdatechs{#1}}
\newcommand\submitdate[1]{\def\CUGT@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CUGT@value@defenddate{#1}}
\newcommand\institute[1]{\def\CUGT@value@institute{#1}}
\newcommand\chairman[1]{\def\CUGT@value@chairman{#1}}
%%�Զ���ο������ϱ�����
\newcommand{\ucite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}  % ����2
%%�Զ���frontmatter��ʽ
\newif\if@frontmatter\@frontmattertrue
\renewcommand\frontmatter{%
\cleardoublepage
\@frontmattertrue
\@mainmatterfalse
\setcounter{page}{1}
\pagenumbering{Roman}
\pagestyle{plain}{}
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}
}
%%�Զ���mainmatter��ʽ
\renewcommand\mainmatter{%
\cleardoublepage
\@frontmatterfalse
\@mainmattertrue
\setcounter{page}{1}
\pagenumbering{arabic}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[LO,RE]{\songti\zihao{-5} \CUGT@value@submitdate}
  \fancyhead[CO]{\songti\zihao{-5} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis}
  \fancyhead[CE]{\songti\zihao{-5} \CUGT@value@author :~~ \CUGT@value@titlemark}
  \fancyhead[LE,RO]{\songti\zihao{-5} ~\thepage~}
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead[LO,RE]{\songti\zihao{-5} \CUGT@value@submitdate}
  \fancyhead[CO]{\songti\zihao{-5} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis}
  \fancyhead[CE]{\songti\zihao{-5} \CUGT@value@author :~~ \CUGT@value@titlemark}
  \fancyhead[LE,RO]{\songti\zihao{-5} ~\thepage~}
%%����ҳü˫��
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.4pt}}%
\rule[0.7\baselineskip]{\headwidth}{0.4pt}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\makeheadrule}}
\makeatother%
}
%%����Ŀ¼��ʽ  
\setcounter{tocdepth}{3} \setcounter{secnumdepth}{3}
\dottedcontents{chapter}[3.5em]{\songti\zihao{5}}{4em}{0.5pc}
\dottedcontents{section}[5.5em]{\songti\zihao{5}}{3em}{0.5pc}
\dottedcontents{subsection}[6.1em]{\songti\zihao{5}}{1.7em}{0.5pc}  
%%�����½ڱ����ʽ
\renewcommand\chaptername{��\CJKnumber{\value{chapter}}��}
\renewcommand{\thesection}{\S~\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\hspace{-3ex}\arabic{chapter}.\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}.}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%������漰�̶���Ϣҳ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%���ķ���1
\newcommand\makecover{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \songti\zihao{3}
      \CUGT@label@classification~\CUGTunderline[70pt]{\CUGT@value@classification}
        \hfill
      \CUGT@label@confidential~\CUGTunderline[70pt]{\CUGT@value@confidential} \\
	  \CUGT@label@UDC~\CUGTunderline[75pt]{\CUGT@value@UDC} \hfill \, \\
	\vspace{3em}
      \heiti\zihao{-1} \CUGT@value@school \\
      \CUGT@value@degree\CUGT@label@thesis \\
	\vspace{3em}
      \heiti\zihao{2} ~\CUGT@value@title~ \\
	\vspace{3em}
    \heiti\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{lll}
      \CUGT@label@author & ~\CUGT@value@author &\,\,\,\,\,\,
	\\
      \CUGT@label@major & ~\CUGT@value@major  &
    \\
      \CUGT@label@advisor & ~\CUGT@value@advisor &
	\\
	  \CUGT@label@institute & ~\CUGT@value@institute &
    \end{tabular}
	\vskip \stretch{0.6}
	\songti\zihao{3}
      \CUGT@value@submitdatechs
	\vspace{1em}	
  \end{center}
}

%%%���ķ���2
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \songti\zihao{3}
      \CUGT@label@schoolnumber~\CUGT@value@schoolnumber
        \hfill
      \CUGT@label@studentnumber~\CUGT@value@studentnumber
    \vskip \stretch{1.8}
      \heiti\zihao{2} \CUGT@value@school \\
      \CUGT@value@degree\CUGT@label@thesis
    \vskip \stretch{0.9}
      \heiti\zihao{3} ~\CUGT@value@title~
    \vskip \stretch{1}
    \songti\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.0}
    \begin{tabular}{lll}
      \CUGT@label@author & ~\CUGT@value@author &\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,
	\\
      \CUGT@label@major & ~\CUGT@value@major  &
    \\
      \CUGT@label@advisor & ~\CUGT@value@advisor &
    \end{tabular}
	\vskip \stretch{2.9}
	 \ifCUGT@fundinfo
	\songti\zihao{5}
      \CUGT@label@fundhead \CUGT@value@fund \CUGT@label@fundtail
	\vskip \stretch{0.6}
	\fi
	\songti\zihao{3}
      \CUGT@value@submitdatechs
	\vspace{1em}	
  \end{center}
}

%%%Ӣ�ķ���
\newcommand\englishtitle[1]{\def\CUGT@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\CUGT@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\CUGT@value@englishadvisor{#1}}
\newcommand\englishinstitute[1]{\def\CUGT@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\CUGT@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\CUGT@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\CUGT@value@englishmajor{#1}}
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
	\normalsize\zihao{-3} \CUGT@label@englishstatement \\
	\vspace{5em}
      \bf\zihao{-2} \CUGT@value@englishtitle
    \vskip \stretch{1}
	\normalfont\zihao{4}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.0}
    \begin{tabular}{rl}
      \CUGT@label@englishauthor &~~\CUGT@value@englishauthor \\
      \CUGT@label@englishmajor  &~~\CUGT@value@englishmajor \\
      \CUGT@label@englishadvisor&~~\CUGT@value@englishadvisor \\
    \end{tabular} 
    \vskip \stretch{2}
      \normalfont\zihao{-3} \CUGT@label@englishschool \\
    \vskip 5pt
      \normalfont\zihao{-3} \CUGT@label@englishadress
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%%%ԭ��������
\newcommand\makestatement{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}	
	\heiti\zihao{-2}�й����ʴ�ѧ���人���о���ѧλ����ԭ��������
	\vspace{1em}
  \end{center}
  \songti\zihao{-4}\hspace{2em} ����֣���������������ʽ���\CUGT@value@degreeѧλ���ġ�\CUGT@value@titlemark����
  �Ǳ����ڵ�ʦ��ָ���£����й����ʴ�ѧ���人������\CUGT@value@degreeѧλ�ڼ���������о�������ȡ�õĳɹ���
  �����г���ע�������ⲻ���������ѷ�����׫д�����о��ɹ��������ĵ�����ṩ���������й���Ա��������˵��������л�⡣
  
  
�������ʽ���\CUGT@value@degreeѧλ����û��Υ��ѧ�����º�ѧ���淶��û����Ȩ��Ϊ����Ը��е��ɴ˶������ķ������κͷ��ɺ����


\vspace{2em}
ѧλ�������ߣ�ǩ�֣��� \hspace{5em}         ���ڣ������ꡡ���¡�����
}

%%%��Ȩ��
\newcommand\makeauthorization{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}	
	\heiti\zihao{-2}�й����ʴ�ѧ���人��ѧλ����ʹ����Ȩ��
	\vspace{2em}
  \end{center}
  \songti\zihao{4}\hspace{2em} ������Ȩ�й����ʴ�ѧ���人���ɲ���Ӱӡ����ӡ�����ֻ������������ֶα��汾ѧλ���ģ�
  ѧУ��������йز��Ż�����ͽ���ѧλ���ĵĵ��Ӱ�ȫ�ģ������й����ݿ���м��������ؼ����״��ݷ���
  ͬ����У԰�����ṩȫ����������ط���
  
\vspace{4em}
\hspace{4em} ѧλ��������ǩ����\CUGTunderline[140pt]{}        \\    

\hspace{4em} ��\hspace{6em}�ڣ�  \CUGTunderline[140pt]{\hspace{3em}��\hspace{2em}��\hspace{2em}��}
}%

%%����ժҪ  
\newenvironment{abstract}
  {%
  \cleardoublepage
  % \thispagestyle{empty}
  \begin{center}
  \heiti\zihao{3}\CUGT@value@title \\
  \vspace{1em}
  \songti\zihao{-4}\CUGT@label@authorshort~\CUGT@value@author \hspace{3em} \CUGT@label@advisorshort~\CUGT@value@advisor \\
  \vspace{1em}
  \songti\zihao{4}\CUGT@label@abstract
  \end{center}
  \hspace{1.3em}
  \songti\zihao{5}
  }{}
%%���Ĺؼ���  
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti\zihao{5} \CUGT@label@keywords} \heiti\zihao{5}#1}
  
%%Ӣ��ժҪ  
\newenvironment{englishabstract}
  {%
  \cleardoublepage
  % \thispagestyle{empty}
  \begin{center}
  \zihao{2}\CUGT@value@englishtitle \\
  \vspace{0.5em}
  \zihao{-4}\CUGT@label@englishauthor~\CUGT@value@englishauthor \hspace{3em} \CUGT@label@englishadvisor~\CUGT@value@englishadvisor \\
  \vspace{1em}
  \zihao{4}\MakeUppercase\CUGT@label@englishabstract
  \end{center}
  \hspace{2ex}
  \zihao{5}
  }{}

%%Ӣ�Ĺؼ���
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf\zihao{5} \CUGT@label@englishkeywords} \zihao{5}#1}


%%
%% End of file `CUGthesis.cls'.