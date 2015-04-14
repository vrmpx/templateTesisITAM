% Tesis ITAM CLASS -- version 0.1 (13 - Abr - 2015)
% Clase para las tesis del ITAM
% 
% 13 - Abr - 2015 	Victor Martinez 	victor.martinez (at) itam.mx
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesisITAM}[2015/04/13 v0.01 Template para tesis ITAM]

%%%%%%%%%%%%%%%%%%%%%%%%% Options %%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{a4paper}{
  \PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{oneside}{
  \PassOptionsToClass{\CurrentOption}{report}
}

%%%%%%%%%%%%%%%%%%%%%%%%% Tesis o Tesina %%%%%%%%%%%%%%%%%%%%%%%%%
\let\if@tesina\iffalse
\DeclareOption[tesina]{\let\if@tesina\iftrue}

%%%%%%%%%%%%%%%%%%%%%%%%% Inputenc %%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{utf8}{
  \PassOptionsToPackage{\CurrentOption}{inputenc}
}

%%%%%%%%%%%%%%%%%%%%%%%%% Babel 2 idiomas %%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{es-tabla}{
  \PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{babel}
}

%% Execute default options
\ExecuteOptions{10pt,a4paper,oneside}

%% Process given options
\ProcessOptions\relax

% Usamos como clase base el de report
\LoadClass{report}


% Paquetes requeridos
\RequirePackage{babel}
\RequirePackage{inputenc}
\RequirePackage{graphicx}

% Layout del texto
\parindent 0pt
\parskip 1ex
\renewcommand{\baselinestretch}{1.33}

%Abstract Page 
\newenvironment{abstract}[1]{%
	\begin{otherlanguage}{#1}
	\bigskip%
	\begin{center}\bfseries\abstractname\end{center}%
}{\end{otherlanguage}\par\bigskip}


%%%%%%%%%%%%%%%%%%%%%%%%% Definiciones para autor %%%%%%%%%%%%%%%%%%%%%%%%%

% Definimos el campo de \degree para la licenciatura / maestria / doctorado en algo
\newcommand\degree[1]{\renewcommand\@degree{#1}}
\newcommand\@degree{\@latex@error{No \noexpand\degree given}\@ehc}

% Definimos el campo de \advisor para el nombre del supervisor
\newcommand\advisor[1]{\renewcommand\@advisor{#1}}
\newcommand\@advisor{\@latex@error{No \noexpand\advisor given}\@ehc}

% Definimos el campo de \year para el año de publicacion
\newcommand\year[1]{\renewcommand\@year{#1}}
\newcommand\@year{\@latex@error{No \noexpand\year given}\@ehc}

% Definimos un comando para el lugar de publicación dentro del espacio de memoria protegido. Sin embargo un usuario avanzado de LaTeX podria redefinirlo, lo cual esta bien.
\newcommand\@place{MÉXICO, D.F.}

%%%%%%%%%%%%%%%%%%%%%%%%% Title page %%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{maketitle}{%
	\begin{center}
	\vspace{70pt}
		\begin{tabular}{c}
			\Large \emph{\textsc{Instituto Tecnológico Autónomo de México}}\\
			\hline
		\end{tabular}\\
		\vspace{25pt}
		\includegraphics[width=10cm,height=2.8cm]{LOGO_ITAM.jpg}\\
		\vspace{25pt}
		{\huge \@title}\\
		\vspace{5pt}
		% {\large \thesubtitle}\\
		\vspace{20 pt}
		\if@tesina{TESINA}\else{TESIS} \\
		\vspace{5pt}
		QUE PARA OBTENER EL TÍTULO DE \\
		\vspace{5pt}
		{\Large \@degree} \\
		\vspace{5pt}
		PRESENTA \\
		\vspace{5pt}
		{\Large \@author} \\
		\vfill
		ASESOR \\
		{\Large \@advisor} \\
		\vspace{5pt}
		\begin{tabular}{lcr}
			\@place & \hspace{60pt} & \@year
		\end{tabular}
	\end{center}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%% Permisos page %%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{derechos}{%
	\chapter*{\phantom{Declaración}}
	``Con fundamento en los artículos 21 y 27 de la Ley Federal de Derecho de Autor y como titular de los derechos moral y patrimonial de la obra titulada ``\textbf{\@title}'', otorgo de manera gratuita y permanente al Instituto Tecnológico Autónomo de México y a la biblioteca Raúl Baillères Jr., autorización para que fijen la obra en cualquier medio, incluido el electrónico, y la divulguen entre sus usuarios, profesores, estudiantes o terceras personas, sin que pueda percibir por tal divulgación una prestación''
    \\
    \begin{center}
        \theauthor\\
        \vspace{4em}
        \rule[0mm]{60mm}{0.1mm}\\
        Fecha\\
        \vspace{3em}
        \rule[0mm]{60mm}{0.1mm}\\
        Firma\\
    \end{center}
}


