$pdf_previewer = 'open -a skim';
$pdflatex = "xetex -halt-on-error %O %S";
$aux_dir = 'build';
$ENV{'TEXINPUTS'}='./tex/latex/rpg:./tex/latex/rpg/backgrounds:' . $ENV{'TEXINPUTS'};
