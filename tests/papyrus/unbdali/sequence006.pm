dtmc

module Teste6
	sLifelineA : [-1..2] init 0;
	sLifelineB : [-1..0] init 0;

	[] sLifelineA=1 -> 0.9:(sLifelineA'=2) + 0.1:(sLifelineA'=-1);
	[end_LifelineA] sLifelineA=2 -> 1.0:(sLifelineA'=2);
	[init_LifelineA] sLifelineA=0 -> 0.9:(sLifelineA'=1) + 0.1:(sLifelineA'=-1);
	[fail_LifelineA] sLifelineA=-1 -> 1.0:(sLifelineA'=-1);
	[init_LifelineB] sLifelineB=0 -> 1.0:(sLifelineB'=0);
	[fail_LifelineB] sLifelineB=-1 -> 1.0:(sLifelineB'=-1);
endmodule
