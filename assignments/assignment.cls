% cSpell:disable

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2025/11/05 Custom Assignment Class]
\LoadClass[12pt]{article}

% ---------- PACKAGES ----------
\RequirePackage{graphicx}
\RequirePackage{amsmath, amssymb, amsthm, amsfonts}
\RequirePackage{longtable}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{enumerate}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{listings}

% ---------- HEADER INFO COMMANDS ----------
\newcommand{\course}[1]{\def\@course{#1}}
\newcommand{\assignment}[1]{\def\@assignment{#1}}
\newcommand{\student}[1]{\def\@student{#1}}
\newcommand{\duedate}[1]{\def\@duedate{#1}}

% ---------- HEADER & FOOTER ----------
\makeatletter
\pagestyle{fancy}
\fancyhead[L]{\@student}
\fancyhead[C]{\@course~--~\@assignment}
\fancyhead[R]{\@duedate}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.2pt}
\setlength{\headheight}{15pt}
\makeatother

% ---------- CUSTOM COMMANDS ----------
\newcommand{\solution}{\vspace{0.1in}\newline\textbf{Solution:} }
\newcommand{\bracket}[1]{\left(#1\right)}
\newcommand{\sbracket}[1]{\left[#1\right]}
\newcommand{\set}[1]{\left\{#1\right\}}
\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\expsign}{\char`\^}

% --- Math helpers ---
\newcommand{\vect}[1]{\vec{\mathbf{#1}}}
\newcommand{\norm}[1]{\|#1\|}
\newcommand{\matrixp}[1]{\begin{pmatrix}#1\end{pmatrix}}
\newcommand{\matrixb}[1]{\begin{bmatrix}#1\end{bmatrix}}
\newcommand{\matrixv}[1]{\begin{vmatrix}#1\end{vmatrix}}
\newcommand{\proj}[2]{proj$_{#1}\bracket{#2}$}
\newcommand{\inner}[2]{\langle\,#1,#2\rangle}
\newenvironment{amatrix}[1]{%
  \left[\begin{array}{@{}*{#1}{c}|c@{}}
}{%
  \end{array}\right]
}

% --- Number sets ---
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
