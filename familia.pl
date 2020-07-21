progenitorde('santiago','nicolas').
progenitorde('emperatriz','nicolas').
progenitorde('luis','aldemaida').
progenitorde('antonia','aldemaida').
progenitorde('nicolas','rafael').
progenitorde('aldemaida','rafael').
progenitorde('nicolas','elena').
progenitorde('aldemaida','elena').
progenitorde('nicolas','graciela').
progenitorde('aldemaida','graciela').
progenitorde('nicolas','yomaira').
progenitorde('aldemaida','yomaira').
progenitorde('rafael','luisa').
progenitorde('rafael','carolina').
progenitorde('elena','andres').
progenitorde('yomaira','stefany').
progenitorde('yomaira','nathalia').

bisabuelode(A,B):- progenitorde(A,D), progenitorde(D,C), progenitorde(C,B).

abuelode(A,B):- progenitorde(A,C), progenitorde(C,B).

hermanode(A,B):- progenitorde(C,A), progenitorde(C,B), A \== B.

tiode(A,B):- progenitorde(C,B), hermanode(A,C).

nietode(A,B):- progenitorde(C,A), progenitorde(B,C).

bisnietode(A,B):- progenitorde(D,A), progenitorde(D,C), progenitorde(B,C).

hijode(A,B):- progenitorde(B,A).

sobrinode(A,B):- hermanode(A,C),progenitorde(C,B).


familiarde(A,B):- progenitorde(A,B).
familiarde(A,B):- bisabuelode(A,B).
familiarde(A,B):- abuelode(A,B).
familiarde(A,B):- hermanode(A,B).
familiarde(A,B):- tiode(A,B).
familiarde(A,B):- nietode(A,B).
familiarde(A,B):- hijode(A,B).
familiarde(A,B):- bisnietode(A,B).


familiar(X,L):-findall(B,familiarde(X,B),L).


















