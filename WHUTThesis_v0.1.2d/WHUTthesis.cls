%%
%% This is file `WHUTthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% WHUTthesis.dtx  (with options: `cls')
%% This is a generated file.
%% 
%% Copyright (C) 2010 by Hu,Weiyi <huweiyi@whut.edu.cn>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{WHUTthesis}
[2010/03/02 v0.1.0 Thesis Template for Wuhan University of Technology]
\def\whutthesis{\textsc{WHUT}\textsc{thesis}}
%%\def\version{0.1.2b}
\newif\ifwhut@master\whut@masterfalse
\newif\ifwhut@doctor\whut@doctorfalse
\newif\ifwhut@istwoside\whut@istwosidefalse
\newif\ifwhut@composing\whut@composingfalse
\DeclareOption{twoside}{\whut@istwosidetrue}
\DeclareOption{master}{\whut@mastertrue}
\DeclareOption{doctor}{\whut@doctortrue}
\DeclareOption{composing}{\whut@composingtrue}
\DeclareOption*{\PackageWarning{whutthesis}{Unknown Option '\CurrentOption'}}
%% 将选项传递给 ctexbook 类
%% 用户至少要提供一个选项：指定论文类型。
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\ifwhut@istwoside
    \LoadClass[cs4size,a4paper,twoside,openright,fancyhdr,fntef]{ctexbook}
\else
    \LoadClass[cs4size,a4paper,oneside,openany,fancyhdr,fntef]{ctexbook}
\fi
\ifwhut@master\relax\else
    \ifwhut@doctor\relax\else
    \ClassError{whutthesis}%
        {You have to specify one of thesis options: master or doctor.}{}
    \fi
\fi
%% 首先调用在文档类书写中需要的过程控制语句
\RequirePackage{ifthen,calc}
%% 我们直接用\textsf{geometry}宏包进行页面边距的设定，调用titlesec设定标题以及页眉页脚，
%% 用\textsf{titletoc}设定目录格式。
\RequirePackage{geometry}
%%\RequirePackage[center]{titlesec} %此包会覆盖ctexbook的设置，取消掉
\RequirePackage{titletoc}
%% 图形支持宏包。
\RequirePackage{graphicx}
\RequirePackage[config]{subfig}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
%%\RequirePackage{tabularx} %\textsf{tabularx}需要在\textsf{hyperref}之后引入才不会使正文的footnote的超链接失效
\RequirePackage{slashbox}
%% 引入\textsf{paralist}来达到比较好看的列表环境
\RequirePackage[neverdecrease]{paralist}
\setdefaultenum{1)}{a)}{i.}{A.}% 设置列表模式
\setdefaultleftmargin{4ex}{}{}{}{}{}
\let\itemize\compactitem
\let\enditemize\endcompactitem
\let\enumerate\compactenum
\let\endenumerate\endcompactenum
\let\description\compactdesc
\let\enddescription\endcompactdesc
%% 文档中还需要一定的色彩控制和字体控制
\RequirePackage{xcolor}
\ifwhut@composing
    \pagecolor[rgb]{1,0.95,0.88}
\fi

%%\RequirePackage{amsmath,amsfonts,amssymb,bm,mathrsfs}
\RequirePackage{amsmath,amssymb}
\RequirePackage{txfonts}
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
%% 图表双标题支持。和其他包（可能是subfig）冲突！取消掉{\LARGE\Frowny}
%%\RequirePackage{ccaption}
%%\captiondelim{\ }
%%\captionnamefont{\kaishu\zihao{5}}
%%\captiontitlefont{\kaishu\zihao{5}}
%% 将参考文献、索引、表格目录和图形
%% 目录等标题及其所在页码自动地添加到标
%% 题目录，可以断行（用\protect\\）@@TODO:来自seu，有待测试
%%\RequirePackage{makeidx} % 索引
%%\RequirePackage[nottoc]{tocbibind}
%% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠。
%% 子图和子表的应用序号外加小括号，如图 1-2(a)。
\renewcommand\theequation{\arabic{chapter}--\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}--\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}--\arabic{table}}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[subfloat]{labelformat=simple,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
%% 首行缩进宏包
\RequirePackage{indentfirst}
%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
%% 行距,学校要求固定值20pt，每页可打印正文约32行
%% |\linestrech| 的值为 1 时为单倍行距， 1.2 时是一倍半行距， 而为 1.6 时是双倍行距。
%%其实不同尺寸的字体行间距都不相同，而是成比例关系。这个20pt是对正文主要字体来说的。
%%在TeX中基本的行间距是|\baselineskip|, 对于12pt的字体，这个值等于14.5pt, 而真正的行间距是
%%|\baselineskip * \baselinestretch| ，|\baselinestretch|默认为1, 但我们可以重新设置它的值，如
%%|\renewcommand{\baselinestretch}{1.38}| 就得到真正的行间距为14.5pt*1.38≈20pt。
%%而这样定义之后，对不同尺寸的字体都会按同样的比例因子1.38放大行间距，使得全文排版能协调一致。
\RequirePackage{setspace}
\setstretch{1.38}
%% \textsf{footmisc}宏包可以方便地更改脚注样式。这里修改了宏包默认的bringhurs样式，
%% \textbf{注意：此脚注样式只支持每页18个脚注，多于18个将无法编号}
\RequirePackage[perpage,symbol*,stable]{footmisc}
\DefineFNsymbolsTM*{hurst}{%
\textdagger       \dagger
      \textdaggerdbl  \ddagger
      \textsection      \mathsection
      \textparagraph  \mathparagraph
      \textbardbl       \|%
      {\textasteriskcentered\textasteriskcentered}{**}%
      {\textdagger\textdagger}{\dagger\dagger}%
      {\textdaggerdbl\textdaggerdbl}{\dagger\dagger}%
      {\textsection\textsection}{\mathsection\mathsection}%
      {\textparagraph\textparagraph}{\mathparagraph\mathparagraph}%
      {\textasteriskcentered\textasteriskcentered\textasteriskcentered}{***}%
      {\textdagger\textdagger\textdagger}{\dagger\dagger\dagger}%
      {\textdaggerdbl\textdaggerdbl\textdaggerdbl}{\ddagger\ddagger\ddagger}%
      {\textsection\textsection\textsection}%%
      {\mathsection\mathsection\mathsection}%
      {\textparagraph\textparagraph\textparagraph}%%
      {\mathparagraph\mathparagraph\mathparagraph}%
      \textasteriskcentered  *
}%
\setfnsymbol{hurst}
%% 引入\textsf{todonotes}宏包以支持编写论文时自己写批注，批注的可见性由composing文档选项控制。
%% 也就是定义了composing文档选项时批注可见，不定义时不可见。
%% 自定义\textsf{mynote}命令，以方便对选定文字做批注。
%% 引入\textsf{etex}宏包以避免\textsf{todonotes}和\textsf{listings}宏包冲突
%% 而导致 \textsf{No room for a new count}错误
\newcommand\mynote[2]{
    {#2}}
\ifwhut@composing
    \RequirePackage{etex}
    \RequirePackage[textwidth=2.9cm,shadow, backgroundcolor=lime]{todonotes}
    \renewcommand\mynote[2]{
        \todo{#1}
        {\color{gray}#2}}
\fi

\RequirePackage[numbers,super,sort&compress]{natbib}
\RequirePackage{hyperref}
\hypersetup{%
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    pdfpagelabels,
    pdfborder=0 0 0}
\RequirePackage{hypernat}

%% \textsf{tabularx}需要在\textsf{hyperref}之后引入才不会使正文的footnote的超链接失效
\RequirePackage{tabularx}

%% 设置 url 样式，与上下文一致
\urlstyle{same}
%% 下划线自动换行
\RequirePackage{ulem}
%% 设置章节格式
\CTEXsetup[number={\arabic{chapter}},name={第,章},
            nameformat={\bfseries\centering\zihao{-2}},
            titleformat={\bfseries\zihao{-2}},
            afterskip={30pt}]{chapter}
\CTEXsetup[nameformat={\bfseries\zihao{3}},
            titleformat={\bfseries\zihao{3}}]{section}
\CTEXsetup[nameformat={\bfseries\zihao{4}},
            titleformat={\bfseries\zihao{4}}]{subsection}
\CTEXsetup[nameformat={\bfseries\zihao{-4}},
            titleformat={\bfseries\zihao{-4}}]{subsubsection}
\CTEXsetup[format={\Large\bfseries}]{section}
\CTEXsetup[beforeskip={10pt}]{chapter}
%% 正文统一用小四号字，行间距：固定值20磅，页眉：2.6cm，页脚：2.4cm，
%% 论文用A4纸标准大小的白纸打印，页边距上下：3.5cm，左右：3.2cm，四周适当修边即可。
\geometry{top=3.5cm,bottom=3.5cm,left=3.2cm,right=3.2cm}
\geometry{headheight=2.6cm,headsep=3mm,footskip=13mm}
%% 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\ifwhut@master
    \fancyhead[CE,CO]{\small \whut@masterheader}
\else
    \fancyhead[CE,CO]{\small \whut@doctorheader}
\fi
\fancyfoot[C]{\small ~---~{\bf\thepage}~---~}      % 页脚
\fancypagestyle{plain}{% 设置开章页页眉页脚风格
    \fancyhf{}%
    % \fancyfoot[C]{\bfseries \small ~第~\thepage~页~}
    \fancyfoot[C]{\small ~---~{\bf\thepage}~---~} %%首页页脚格式
    \renewcommand{\headrulewidth}{0pt}%
    \renewcommand{\footrulewidth}{0pt}%
}
%% 前置部分的封面在后面详细介绍，首先看目录，要求为：目次页由论文的章、节、条、项、附录等的序号、名称和页码组成，
%% 另页排在序之后。目次页标注学位论文的前三级目录。标题统一用“目录”，黑体3字号字居中，段前、段后间距为1行;
%% 各章（一级目录）名称用黑体小4号字，段前间距为0.5行，段后间距为0行; 其它（二、三级目录）用宋体小4号字，
%% 段前、段后间距为0行。：
%% 在\LaTeX{}中，Chapter在目录中默认是没有点的,我们加上,另外我们一并将目录中的section和subsection设定好,
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2em]{\songti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[4em]{\songti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
%% 方便的定义封面的一些替换命令。
\def\whut@define@term#1{
    \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname whut@#1\endcsname{##1}}
    \csname #1\endcsname{}}
%% 封面、摘要、版权、致谢变量定义
\newcommand\cauthordepartment[2][]{\def\whut@cauthordepartment@short{#1}\def\whut@cauthordepartment{#2}}
\whut@define@term{categorynumber}
\whut@define@term{secretlevel}
\whut@define@term{UDC}
\whut@define@term{ctitle}
\whut@define@term{ctitleformated}
\whut@define@term{etitle}
\whut@define@term{etitleformated}
\whut@define@term{cauthor}
\whut@define@term{cadvisorname}
\whut@define@term{cadvisortitle}
\whut@define@term{cadvisordegree}
\whut@define@term{cadvisordepartment}
\whut@define@term{advisorzipcode}
\whut@define@term{ccoadvisorname}
\whut@define@term{ccoadvisortitle}
\whut@define@term{ccoadvisordegree}
\whut@define@term{ccoadvisordepartment}
\whut@define@term{coadvisorzipcode}
\whut@define@term{cmajor}
\whut@define@term{csubmitdate}
\whut@define@term{coraldefensedate}
\whut@define@term{cauthorizedepartment}
\whut@define@term{cauthorizedate}
\whut@define@term{cchairman}
\whut@define@term{cannotatora}
\whut@define@term{cannotatorb}
\whut@define@term{cdate}
\whut@define@term{cdegree}
\def\whut@cauthordepartment@short{}
\def\whut@cauthordepartment{}
\whut@define@term{edegree}
\whut@define@term{edepartment}
\whut@define@term{emajor}
\whut@define@term{eauthor}
\whut@define@term{eadvisorname}
\whut@define@term{ecoadvisorname}
\whut@define@term{edate}
%%
%%
%% 封面
\newlength{\whut@title@width}
\def\whut@put@covertitle#1{\makebox{\hb@xt@ \whut@title@width{#1}}}
%%封面
\newcommand{\whut@first@coverpage}{
    \begin{center}
        \vspace*{-1.5cm}
%%      绘制学校名
        \begin{picture}(0,0)(115,110)
            {\includegraphics[width=0.56\textwidth]{figure/whut.pdf}}
        \end{picture}\\
%%      绘制论文题目
        \vspace*{4.3cm}
        \zihao{4}{\whut@apply} \\
        \vspace*{3.2cm}
        \heiti\zihao{1}\whut@ctitle \\
%%      绘制作者等信息
        \vspace*{3cm}
        \setlength{\whut@title@width}{3em}
        {\bf\zihao{3}\fangsong
        \begin{tabular}{p{\whut@title@width}@{\extracolsep{4pt}}l@{\extracolsep{2pt}}l}
            \whut@put@covertitle{\whut@cdepartmentcap} & \whut@title@sep & \whut@cauthordepartment \\
            \whut@put@covertitle{\whut@cmajortitle} & \whut@title@sep &\whut@cmajor \\
            \whut@put@covertitle{\whut@cauthortitle} & \whut@title@sep & \whut@cauthor \\
            \whut@put@covertitle{\whut@advisorcap} & \whut@title@sep & \whut@cadvisorname
        \end{tabular}}\\
%%      绘制日期
        \vspace*{2.5cm}{\zihao{3} \songti \whut@cdate}
    \end{center}
}
%%封二
\newcommand{\CoverTopOption}[3][s]{
    \makebox[2cm][#1]{\bf\songti\zihao{4} #2}{
    \underline{\makebox[3cm][c]{\bf\songti\zihao{4} #3}}}
}
\newcommand{\CoverBottomOption}[3][4.2cm]{
    \makebox[6.6cm]{
        {\songti\zihao{4}#2} %宋体四号
        \underline{\makebox[#1][c]{\kaishu\zihao{4}#3}}}
}
\def\whut@put@titlepagetitle#1{{\zihao{4}\songti \makebox{\hb@xt@ \whut@title@width{#1}}}}
\def\whut@put@titlepagecontent#1{{\zihao{4}\kaishu {#1}}}
\newcommand{\whut@first@titlepage}{
    \begin{center}
        \vspace*{-1.3cm}
        \renewcommand{\arraystretch}{1.6}
%%      绘制顶部分类号、学校名等信息
        \begin{tabular*}{\textwidth}{l@{\extracolsep\fill}l}
            \CoverTopOption{\whut@categorynumbercap}{\whut@categorynumber} &
            \CoverTopOption{\whut@secretlevelcap}{\whut@secretlevel}\\
            \CoverTopOption{\whut@UDCcap}{\whut@UDC} &
            \CoverTopOption{\whut@schoolcodecap}{\whut@schoolcode}
        \end{tabular*}\\
%%      绘制学校名
        \begin{picture}(0,0)(115,100)
            {\includegraphics[width=0.56\textwidth]{figure/whut.pdf}}
        \end{picture}\\
        \vspace*{3.5cm}
        \bf\zihao{1}{\ziju{1.5}\whut@thesisname}
    \end{center}

    \vspace*{0.9cm}
    \begin{center}
        \songti\zihao{4}
        \setlength{\whut@title@width}{5em}
        \setlength{\extrarowheight}{4pt}
%%      绘制题目、作者、指导教师、审阅等信息
        \hangafter 1
        \hangindent 5.23em
        \noindent\whut@put@titlepagetitle{\whut@ctitlecap}  \whut@put@titlepagecontent{\uline{\hfill \whut@ctitleformated \hfill}}\\
        \noindent\whut@put@titlepagetitle{\whut@etitlecap}  \uline{\hfill \whut@etitleformated \hfill}\\
        \noindent\whut@put@titlepagetitle{\whut@authornamecap} \whut@put@titlepagecontent{\uline{\hfill \whut@cauthor \hfill}} \\ \par
        \begin{tabular*}{\textwidth}{@{}p{\whut@title@width}l@{}c@{}c}
                                                                            & \whut@advisornamecap \underline{\makebox[3.7cm]{\kaishu\whut@cadvisorname}} \whut@advisortitlecap \underline{\makebox[2.4cm]{\kaishu\whut@cadvisortitle}}  & \whut@advisordegreecap \underline{\makebox[2.4cm]{\kaishu\whut@cadvisordegree}}\\
            \raisebox{1.8ex}[0pt]{\whut@put@titlepagetitle{\whut@advisorcap}} & \whut@advisordepartmentcap \underline{\makebox[6.2cm]{\kaishu\whut@cadvisordepartment}}  & \whut@advisorzipcodecap \underline{\makebox[2.4cm]{\kaishu\whut@advisorzipcode}}
        \end{tabular*}\\
        \begin{tabular*}{\textwidth}{@{}p{\whut@title@width}l@{}c@{}c}
                                                                            & \whut@advisornamecap \underline{\makebox[3.7cm]{\kaishu\whut@ccoadvisorname}} \whut@advisortitlecap \underline{\makebox[2.4cm]{\kaishu\whut@ccoadvisortitle}}  & \whut@advisordegreecap \underline{\makebox[2.4cm]{\kaishu\whut@ccoadvisordegree}}\\
            \raisebox{1.8ex}[0pt]{\whut@put@titlepagetitle{\whut@coadvisorcap}} & \whut@advisordepartmentcap \underline{\makebox[6.2cm]{\kaishu\whut@ccoadvisordepartment}}  & \whut@advisorzipcodecap \underline{\makebox[2.4cm]{\kaishu\whut@coadvisorzipcode}}
        \end{tabular*}\\
        \begin{tabular*}{\textwidth}{@{}ll@{}}
            \CoverBottomOption{\whut@applycap}{\whut@cdegree} & \CoverBottomOption{\whut@majorcap}{\whut@cmajor}\\
            \CoverBottomOption{\whut@submitdatecap}{\whut@csubmitdate} & \CoverBottomOption{\whut@oraldefensedatecap}{\whut@coraldefensedate}\\
            \CoverBottomOption{\whut@authorizeorganizationcap}{\whut@cauthorizedepartment} & \CoverBottomOption{\whut@authorizedatecap}{\whut@cauthorizedate}\\
%%            \CoverBottomOption[4cm]{\whut@chairmancap}{\whut@cchairman} & \CoverBottomOption{\whut@annotatorcap}{\whut@cannotatora}\\ %%这种方式始终不能对齐，不是表格左边有半个字间距就是主席行凸出去。只能把command释放出来写，dirty code!
            \CoverBottomOption[3.8cm]{\whut@chairmancap}{\whut@cchairman} & \makebox[7.2cm][s]{\songti\zihao{4}{\whut@annotatorcap}\underline{\makebox[4.3cm][c]{\kaishu\zihao{4}\whut@cannotatora}}}\\
                    & \CoverBottomOption{\makebox[2.65cm]{}}{\whut@cannotatorb}
        \end{tabular*}\\
%%      绘制论文打印日期
%%        \vspace*{3.2cm}{\zihao{3} \songti \whut@cdate}
        \vskip2.2cm{\zihao{3} \songti \whut@cdate}
    \end{center}
} % end of titlepage
%%
%%
%% 独创性声明
\newcommand{\whut@declare@mk}{%
    \vspace*{-0.9cm}
    \renewcommand{\baselinestretch}{1.6}
    \begin{center}\zihao{-2}\heiti\ziju{0.4}{\whut@declaretitle}\end{center}\par
    \zihao{4}\ziju{0.1}{\whut@declare}\par
    \vskip0.8cm
    \begin{center}
        \whut@declaresigncap \underline{\makebox[3.5cm][s]{}}
        \whut@declaredatecap \underline{\makebox[3.5cm][s]{}}
    \end{center}
}
%% 论文授权
\newcommand{\whut@authorization@mk}{%
    \vskip1cm
    \renewcommand{\baselinestretch}{1.6}
    \begin{center}\zihao{-2}\heiti\whut@authorizationtitle\end{center}
    \zihao{4}\par\whut@authorization \par
    \begin{center} \whut@authorizationaddon \end{center}\par
    %%\vskip1cm
    \noindent\whut@authorsig\hspace*{2cm}\whut@teachersig\hspace*{2cm}\whut@frontdate
}
%% 生成封面
\newcommand{\makecover}{
    \phantomsection
    \pdfbookmark[-1]{\whut@ctitle}{ctitle}
    \normalsize
    \begin{titlepage}
        \whut@first@coverpage
        \clearpage
        \thispagestyle{empty}
        \whut@first@titlepage
        \clearpage
        \thispagestyle{empty}
        \whut@declare@mk
        \whut@authorization@mk
    \end{titlepage}
}
%% 为摘要的标题格式问题折腾了好久，几欲放弃，原来是没有正确设置好CTEXsetup的参数，
%% 在这里终于感觉到ctexbook的方便了。
\newenvironment{cabstract}{%
    \CTEXsetup[titleformat={\zihao{-3}\bfseries},beforeskip={0pt},afterskip={20pt}]{chapter}
    \chapter{\cabstractname}
    \zihao{-4}
    \@afterheading}
    {\par\vspace{2em}\par}
\newenvironment{eabstract}{%
    \CTEXsetup[titleformat={\zihao{-3}\bfseries},beforeskip={0pt},afterskip={20pt}]{chapter}
    \chapter{\eabstractname}
    \zihao{-4}
    \@afterheading}
    {\par\vspace{2em}\par}
%% 关键字
\newcommand\ckeywords[1]{{\heiti\zihao{-4} \whut@ckeywords@title} #1}
\newcommand\ekeywords[1]{\textbf{\zihao{-4} \whut@ekeywords@title} #1}
%% 主要符号对照表
\newenvironment{denotation}[1][2.5cm]{
    \chapter{\whut@denotation@name} % no tocline
    \noindent\begin{list}{}%
    {\vskip-30bp\zihao{-4}
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
   }}{\end{list}}
%% 致谢
\newenvironment{ack}{%
%%    \clearpage
    \CTEXsetup[titleformat={\zihao{-2}\bfseries},beforeskip={0pt},afterskip={20pt}]{chapter}
    \chapter*{\whut@ackname}
    \addcontentsline{toc}{chapter}{\whut@ackname}
    \@afterheading
    \kaishu\zihao{-4}
}{\par\vspace{2em}\par}
%% 索引
\def\whut@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
    \let\oldnumberline\numberline
    \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
    \@starttoc{\csname ext@#1\endcsname}
    \let\numberline\oldnumberline}
\def\whut@listof#1{% #1: float type
    \@ifstar
    {\chapter[]{\csname list#1name\endcsname}\whut@starttoc{#1}}
    {\chapter{\csname list#1name\endcsname}\whut@starttoc{#1}}}
\renewcommand\listoffigures{\whut@listof{figure}}
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\whut@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
\addcontentsline{\ext@equation}{equation}%
    {\protect\numberline{#1}}}
\newcommand\listofequations{\whut@listof{equation}}
\let\l@equation\l@figure
%% 重定义参考文献样式，来自thu
\renewenvironment{thebibliography}[1]{%
   \chapter*{\bibname}%
   \zihao{5}
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{1.1cm}
         \setlength{\labelsep}{0.4em}
         \setlength{\itemindent}{0pt}
         \setlength{\leftmargin}{\labelwidth+\labelsep}
         \addtolength{\itemsep}{-0.7em}
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy\frenchspacing
    \clubpenalty4000%
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \interlinepenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist\frenchspacing}
%% 引用格式
\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa%
    \unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
    \if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\onlinecite{\@onlinecite}
\def\@onlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
%% 个人简历发表文章等。
%% 简历
\newenvironment{resume}{%
  % \cleardoublepage
    \chapter*{\whut@resume@title}
    \addcontentsline{toc}{chapter}{\whut@resume@title}
    }{}
\newcommand{\resumeitem}[1]{\vspace{2.5em}{\zihao{4}\heiti\centerline{#1}}\par}
%% 生成索引的一些命令，虽然我们暂时还用不到。
\iffalse
\newcommand{\bs}{\symbol{'134}}%Print backslash
\newcommand{\cih}[1]{%
  \index{commands!#1@\texttt{\bs#1}}%
  \index{#1@\texttt{\hspace*{-1.2ex}\bs #1}}}
\newcommand{\ci}[1]{\cih{#1}\texttt{\bs#1}}
\newcommand{\pai}[1]{%
  \index{packages!#1@\textsf{#1}}%
  \index{#1@\textsf{#1}}%
  \textsf{#1}}
\newcommand{\ei}[1]{%
  \index{environments!\texttt{#1}}%
  \index{#1@\texttt{#1}}%
  \texttt{#1}}
\newcommand{\wi}[1]{\index{#1}#1}
\fi
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
%% 在模板文档结束时即装入配置文件，这样用户就能在导言区进行相应的修改，否则必须在 document 开始后才能，感觉不好。
\AtEndOfClass{\input{WHUTthesis.cfg}}
%% 设置一些 pdf 文档信息，依赖于 \pkg{hyperref} 宏包。
\def\whut@setup@pdfinfo{%
    \hypersetup{%
        pdftitle={\whut@ctitle},
        pdfauthor={\whut@cauthor},
        pdfsubject={\whut@cdegree},
        pdfkeywords={\whut@ckeywords},
        pdfcreator={\whut@cauthor},
        pdfproducer={\whutthesis}}
}
\endinput
%%
%% End of file `WHUTthesis.cls'.
