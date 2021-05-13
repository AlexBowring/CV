\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2020/01/04 My CV class]

\LoadClass[a4paper]{article}
\RequirePackage{fontawesome}  % fonts
\RequirePackage{titlesec}     % for editing secions
\RequirePackage{xcolor}
\RequirePackage[default]{raleway}
\RequirePackage{relsize}
\RequirePackage{ifthen}
\RequirePackage[margin=0.8in,footskip=0.25in]{geometry}
\RequirePackage{multicol}
\RequirePackage[skins]{tcolorbox}


%% page settings
\setlength\columnsep{1.5cm}

%% custom colors
\definecolor{cvblue}{rgb}{0.32, 0.68, 0.89}

%%% edit section format
% circled icons
\newcommand*{\circled}[1]{
    \tikz[baseline=(char.base)]{
        \node[shape=circle,fill=black,inner sep=2pt,minimum size=23pt] (char) {\textcolor{white}{#1}};
    }
}

% section different style
\titleformat{\section}         
  {\ralewayextra\bfseries\raggedright\color{cvblue}} 
  {}{0em}  % prefix to all sections
  {\hspace{-0.8em}}  % code before the heading

\titleformat{\subsection}         
  {\large\bfseries} 
  {}{0em}  % prefix to all sections
  {}  % code before the heading
  
\titlespacing*{\subsection}{0pt}{0.2\baselineskip}{0.0\baselineskip}

\titlespacing*{\section}{0pt}{1.0\baselineskip}{0.4\baselineskip}

% section with symbol besides
\let\oldsection\section
\renewcommand*{\section}[2]{%
  \oldsection[#2]{\circled{#1} {\larger[2] #2}}%
}

\newcommand*{\work}[3]{%
  \subsection{#1}%
  \ifthenelse{\equal{#2}{}}{}{#2}%
  #3
}

\newcommand*{\titletext}[7]{%
    \begin{multicols}{2}
    {\ralewayextra\bfseries\fontsize{35}{35}\selectfont \hspace{-10pt} #1}\vspace{-14pt}\\
    \begin{flushright}
    {\ralewaythin\fontsize{40}{40}\selectfont #2}
    \end{flushright}
    
    {\raleway\selectfont \hspace{0pt}#3}
    \columnbreak
    
    \begin{flushright}
    \vspace*{-0.1cm}    
    {\faPhone\ |} \textbf{#4}\\
    {\faEnvelopeO\ |} \textbf{#5}\\
    {\faLinkedinSquare\ |} \textbf{#6}\\
    \ifthenelse{\equal{#7}{}}{}{{\faGithub\ |} \textbf{#7}}%

    \end{flushright}
    \end{multicols}
    \vspace{0.7cm}
}

\renewcommand{\baselinestretch}{1.15}
