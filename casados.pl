padrede('socrates','aristoteles').
padrede('platon','aritoteles').
padrede('zeus','apolo').
padrede('leto','apolo').
padrede('zeus','artemisa').
padrede('leto','artemisa').
padrede('zeus','hefesto').
padrede('hera','hefesto').
padrede('zeus','ares').
padrede('hera','ares').
padrede('crono','zeus').
padrede('rea','zeus').


casadocon(A,B):- padrede(A,C),padrede(B,C), A \== B.
esfeliz(X):- casadocon(X,_).



