(* ::Package:: *)

(* ::Title:: *)
(*Gluon TMDs and LDMEs in J/\[CapitalPsi] production*)


(* ::Section::Closed:: *)
(*0.initization*)


(* ::Input:: *)
(*<<FeynCalc`;*)


(* ::Section::Closed:: *)
(*1.FourVectors required in the calculation*)


(* ::Text:: *)
(*the leptonic momenta can be written as.*)


(* ::Input:: *)
(*Lmu=(1-y)*xb*FourVector[P,\[Mu]]/y+Q^2*FourVector[n,\[Mu]]/(2*xb*y)+Sqrt[1-y]*Q*FourVector[lt,\[Mu]]/y*)


(* ::Input:: *)
(*Lpmu=xb*FourVector[P,\[Mu]]/y+(1-y)*Q^2*FourVector[n,\[Mu]]/(2*xb*y)+Sqrt[1-y]*Q*FourVector[lt,\[Mu]]/y*)


(* ::Input:: *)
(*Lrho=Lmu/.\[Mu]->\[Rho]*)


(* ::Input:: *)
(*Lprho=Lpmu/.\[Mu]->\[Rho]*)


(* ::Text:: *)
(*The leptonic  tensor is given by.*)


(* ::Input:: *)
(*lepmurho=e^2*(-MT[\[Mu],\[Rho]]*Q^2+2*(Lmu . Lprho+Lrho . Lpmu))*)


(* ::Input:: *)
(*lepmurho1=e^2*(LeviCivita[a1,a2,\[Mu],\[Rho]]) . (Lmu/.\[Mu]->a1) . (Lpmu/.\[Mu]->a2)*)


(* ::Section::Closed:: *)
(*2.TMDs*)


(* ::Text:: *)
(*By means of the symmetric and antisymmetric transverse projectors,respectively given by*)


(* ::Input:: *)
(*GT=MT[\[Nu],\[Sigma]]-FourVector[P,\[Nu]] . FourVector[n,\[Sigma]]-FourVector[P,\[Sigma]] . FourVector[n,\[Nu]]*)
(*ET=LeviCivita[\[Alpha]3,\[Beta]3,\[Mu],\[Nu]] . FourVector[P,\[Alpha]3] . FourVector[n,\[Beta]3]*)


(* ::Text:: *)
(*the correlator can be parametrized in term of gluon TMDs.*)


(* ::Input:: *)
(*GammaU1=-GT*f1/2*)
(*GammaU2=(FourVector[pt,\[Nu]] . FourVector[pt,\[Sigma]]/(Mp^2)-GT*ScalarProduct[pt,pt]/(2*Mp^2))h1/2*)


(* ::Input:: *)
(*GammaU3=(GT) . (ET/.{\[Mu]->m1,\[Nu]->m2}) . FourVector[pt,m1] . FourVector[St,m2]*f2/(2*Mp)*)


(* ::Input:: *)
(*GammaU5=FourVector[pt,i] . ((ET/.{\[Mu]->i}) . FourVector[pt,\[Sigma]]+(ET/.{\[Mu]->i,\[Nu]->\[Sigma]}) . FourVector[pt,\[Nu]])*(ScalarProduct[pt,St]*h2)/(2*Mp^3)-(FourVector[pt,i] . ((ET/.{\[Mu]->i}) . FourVector[St,\[Sigma]]+(ET/.{\[Mu]->i,\[Nu]->\[Sigma]}) . FourVector[St,\[Nu]])+FourVector[St,i] . ((ET/.{\[Mu]->i}) . FourVector[pt,\[Sigma]]+(ET/.{\[Mu]->i,\[Nu]->\[Sigma]}) . FourVector[pt,\[Nu]]))*(h3+(h2*ScalarProduct[pt,pt]/(2*Mp^2)))/(4*Mp)*)


(* ::Input:: *)
(*GammaU6=(-I*(ET/.{\[Mu]->\[Nu],\[Nu]->\[Sigma]})*sL*g1/2+(FourVector[pt,i] . (ET/.{\[Mu]->i}) . FourVector[pt,\[Sigma]]+FourVector[pt,i] . (ET/.{\[Mu]->i,\[Nu]->\[Sigma]}) . FourVector[pt,\[Nu]])*sL*h4/(4*Mp^2))*)


(* ::Section::Closed:: *)
(*3. Scalar products*)


(* ::Text:: *)
(*Just some for simplicity.*)


(* ::Input:: *)
(*ScalarProduct[n,n]=0;*)
(*ScalarProduct[n,lt]=0;*)
(*ScalarProduct[P,lt]=0;*)
(*ScalarProduct[P,P]=0;*)
(*ScalarProduct[pt,pt]=-pt2;*)
(*ScalarProduct[l,n]=((1-y)*xb)/y;*)
(*ScalarProduct[l,P]=Q^2/(2*xb*y);*)
(*ScalarProduct[lt,n]=0;*)
(*ScalarProduct[lt,q]=0;*)
(*ScalarProduct[PQ,PQ]=MQ^2;*)
(*ScalarProduct[P,n]=1;*)
(*ScalarProduct[n,q]=-xb;*)
(*ScalarProduct[q,q]=-Q^2;*)
(*ScalarProduct[P,q]=Q^2/(2*xb);*)
(*ScalarProduct[P,PQ]=ScalarProduct[P,q];*)
(*ScalarProduct[n,PQ]=(MQ^2)/(2*ScalarProduct[P,q]);*)
(*ScalarProduct[q,PQ]=(MQ^2)/2-xb*ScalarProduct[P,q];*)
(*ScalarProduct[lt,lt]=-1;*)
(*ScalarProduct[lt,PQ]=ScalarProduct[lt,pt];*)
(*ScalarProduct[n,pt]=0;*)
(*ScalarProduct[lt,pt]=-Sqrt[pt2]*Cos[\[Theta]t];*)
(*ScalarProduct[PQ,pt]=ScalarProduct[pt,pt];*)
(*ScalarProduct[P,pt]=0;*)
(*ScalarProduct[pt,q]=0;*)
(*ScalarProduct[n,n]=0;*)
(*ScalarProduct[p,PQ]=ScalarProduct[PQ,PQ]-ScalarProduct[q,PQ];*)


(* ::Input:: *)
(*ScalarProduct[p,q]=ScalarProduct[PQ,q]-ScalarProduct[q,q];*)


(* ::Input:: *)
(*ScalarProduct[q,St]=0;*)
(*ScalarProduct[P,St]=0;*)
(*ScalarProduct[lt,St]=-st*Cos[\[Theta]s];*)
(*ScalarProduct[n,St]=0;*)
(*ScalarProduct[PQ,St]=-Sqrt[pt2]*st*Cos[\[Theta]t-\[Theta]s];ScalarProduct[pt,St]=-Sqrt[pt2]*st*Cos[\[Theta]t-\[Theta]s];*)


(* ::Section::Closed:: *)
(*4. Amplitude of non-perturbative parts*)


(* ::Text:: *)
(*The scattering amplitudes for partonic processes \[Gamma]+g->QQ contributing to ep->e'J/\[CapitalPsi]X can be written.after taking the trace one obtains the following amplitude expression for S-wave and P-wave states.*)


(* ::Input:: *)
(*Amunu1=-2*I*Sqrt[Cs0/MQ]*e*ec*gs*LeviCivita[\[Mu],\[Nu],\[Rho],\[Sigma]] . FourVector[q,\[Rho]] . FourVector[PQ,\[Sigma]]/(MQ^2+Q^2)//Contract*)
(*Amunu2=0;*)
(**)
(*Amunu3=0;*)
(*Amunu4=2*I*Sqrt[Cp0/(Nc*MQ)]*e*ec*gs*(3*MQ^2+Q^2)*(MT[\[Mu],\[Nu]]-2*FourVector[PQ,\[Mu]] . FourVector[q,\[Nu]]/(MQ^2+Q^2))/(MQ*(MQ^2+Q^2))*)
(*Amunu5=-2*Sqrt[6*Cp1/(Nc*MQ)]*e*ec*gs*FourVector[PQ,\[Rho]1] . (LeviCivita[\[Rho]1,\[Sigma]1,\[Mu],\[Nu]]*(MQ^2+Q^2)+2*LeviCivita[\[Rho]1,\[Sigma]1,\[Alpha]1,\[Beta]1] . FourVector[q,\[Alpha]1] . (FourVector[PQ,\[Mu]] . MT[\[Beta]1,\[Nu]]-FourVector[PQ,\[Nu]] . MT[\[Beta]1,\[Mu]]))*Q^2/(MQ^2*(MQ^2+Q^2)^2)*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Amunu6=2*I*Sqrt[3*MQ*Cp2/Nc]*e*ec*gs*(MT[\[Rho]1,\[Mu]] . MT[\[Sigma]1,\[Nu]]+MT[\[Rho]1,\[Nu]] . MT[\[Sigma]1,\[Mu]]-4*FourVector[q,\[Sigma]1] . (MT[\[Mu],\[Nu]] . FourVector[q,\[Rho]1]+MT[\[Nu],\[Rho]1] . FourVector[PQ,\[Mu]]-MT[\[Mu],\[Rho]1] . FourVector[PQ,\[Nu]])/(MQ^2+Q^2))/(MQ^2+Q^2)*)


(* ::Input:: *)
(*Amunu1C=2*I*Sqrt[Cs0/MQ]*e*ec*gs*LeviCivita[\[Rho],\[Sigma],m,l] . FourVector[q,m] . FourVector[PQ,l]/(MQ^2+Q^2);*)
(*Amunu2C=0;*)
(*Amunu3C=0;*)
(*Amunu4C=-Amunu4/.{\[Mu]->\[Rho],\[Nu]->\[Sigma]};*)
(*Amunu5C=-2*Sqrt[6*Cp1/(Nc*MQ)]*e*ec*gs*FourVector[PQ,\[Rho]2] . (LeviCivita[\[Rho]2,\[Sigma]2,\[Mu]2,\[Nu]2]*(MQ^2+Q^2)+2*LeviCivita[\[Rho]2,\[Sigma]2,\[Alpha]2,\[Beta]2] . FourVector[q,\[Alpha]2] . (FourVector[PQ,\[Mu]2] . MT[\[Beta]2,\[Nu]2]-FourVector[PQ,\[Nu]2] . MT[\[Beta]2,\[Mu]2]))*Q^2/(MQ^2*(MQ^2+Q^2)^2)/.{\[Rho]2->\[Gamma],\[Sigma]2->\[Delta],\[Mu]2->\[Rho],\[Nu]2->\[Sigma]}*)


(* ::Input:: *)
(*Amunu6C=-Amunu6/.{\[Mu]->\[Rho],\[Nu]->\[Sigma],\[Rho]1->\[Rho]2,\[Sigma]1->\[Sigma]2}*)


(* ::Input:: *)
(*ep=-MT[\[Mu],\[Nu]]+FourVector[PQ,\[Mu]] . FourVector[PQ,\[Nu]]/MQ^2;*)


(* ::Input:: *)
(*ep1=ep/.{\[Mu]->\[Rho]1,\[Nu]->\[Rho]2};*)
(*ep2=ep/.{\[Mu]->\[Sigma]1,\[Nu]->\[Sigma]2};*)
(*ep3=ep/.{\[Mu]->\[Rho]1,\[Nu]->\[Sigma]2};*)
(*ep4=ep/.{\[Mu]->\[Sigma]1,\[Nu]->\[Rho]2};*)
(*ep5=ep/.{\[Mu]->\[Rho]1,\[Nu]->\[Sigma]1};*)
(*ep6=ep/.{\[Mu]->\[Rho]2,\[Nu]->\[Sigma]2};*)


(* ::Input:: *)
(*ept=(ep1 . ep2+ep3 . ep4)/2-ep5 . ep6/3;*)


(* ::Section::Closed:: *)
(*5.Differential cross section*)


(* ::Input:: *)
(*section1=Simplify[lepmurho . GammaU1 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section2 = Simplify[lepmurho . GammaU1 . Amunu4 . Amunu4C // Contract];*)


(* ::Input:: *)
(*section3=Simplify[lepmurho . GammaU1 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section4=Simplify[lepmurho . GammaU1 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section5=Simplify[lepmurho . GammaU2 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section6= Simplify[lepmurho . GammaU2 . Amunu4 . Amunu4C // Contract];*)


(* ::Input:: *)
(*section7=Simplify[lepmurho . GammaU2 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section8=Simplify[lepmurho . GammaU2 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section9=Simplify[lepmurho . GammaU3 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section10= Simplify[lepmurho . GammaU3 . Amunu4 . Amunu4C // Contract];*)


(* ::Input:: *)
(*section11=Simplify[lepmurho . GammaU3 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section12=Simplify[lepmurho . GammaU3 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section13=Simplify[lepmurho . GammaU5 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section14= Simplify[lepmurho . GammaU5 . Amunu4 . Amunu4C // Contract];*)


(* ::Input:: *)
(*section15=Simplify[lepmurho . GammaU5 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section16=Simplify[lepmurho . GammaU5 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section17=Simplify[lepmurho . GammaU6 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section18= Simplify[lepmurho . GammaU6 . Amunu4 . Amunu4C // Contract];*)


(* ::Input:: *)
(*section19=Simplify[lepmurho . GammaU6 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section20=Simplify[lepmurho . GammaU6 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section21=Simplify[lepmurho1 . GammaU1 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section22= Simplify[lepmurho1 . GammaU1 . Amunu4 . Amunu4C // Contract];*)


(* ::Input:: *)
(*section23=Simplify[lepmurho1 . GammaU1 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section24=Simplify[lepmurho1 . GammaU1 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section25=Simplify[lepmurho1 . GammaU2 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section26=Simplify[lepmurho1 . GammaU2 . Amunu4 . Amunu4C//Contract];*)


(* ::Input:: *)
(*section27=Simplify[lepmurho1 . GammaU2 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section28=Simplify[lepmurho1 . GammaU2 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section29=Simplify[lepmurho1 . GammaU3 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section30=Simplify[lepmurho1 . GammaU3 . Amunu4 . Amunu4C//Contract];*)


(* ::Input:: *)
(*section31=Simplify[lepmurho1 . GammaU3 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section32=Simplify[lepmurho1 . GammaU3 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section33=Simplify[lepmurho1 . GammaU5 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section34=Simplify[lepmurho1 . GammaU5 . Amunu4 . Amunu4C//Contract];*)


(* ::Input:: *)
(*section35=Simplify[lepmurho1 . GammaU5 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section36=Simplify[lepmurho1 . GammaU5 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Input:: *)
(*section37=Simplify[lepmurho1 . GammaU6 . Amunu1 . Amunu1C//Contract];*)


(* ::Input:: *)
(*section38=Simplify[lepmurho1 . GammaU6 . Amunu4 . Amunu4C//Contract];*)


(* ::Input:: *)
(*section39=Simplify[lepmurho1 . GammaU6 . Amunu5 . Amunu5C . (-MT[\[Delta],\[Sigma]1]+FourVector[PQ,\[Delta]] . FourVector[PQ,\[Sigma]1]/MQ^2)//Contract];*)


(* ::Input:: *)
(*section40=Simplify[lepmurho1 . GammaU6 . Amunu6 . Amunu6C . (ept)//Contract];*)


(* ::Section::Closed:: *)
(*6.result*)


(* ::Input:: *)
(*result1=Series[section1/.{pt2->q^2},{q,0,0}];*)


(* ::Input:: *)
(*result2=Series[section2/.{pt2->q^2},{q,0,0}];*)


(* ::Input:: *)
(*result3=Series[section3/.{pt2->q^2},{q,0,0}]/3;*)


(* ::Input:: *)
(*result4=Series[section4/.{pt2->q^2},{q,0,0}]/5;*)


(* ::Input:: *)
(*result5=Series[section5/.{pt2->q^2},{q,0,2}];*)


(* ::Input:: *)
(*result6=Series[section6/.{pt2->q^2},{q,0,2}];*)


(* ::Input:: *)
(*result7=Series[section7/.{pt2->q^2},{q,0,2}]/3;*)


(* ::Input:: *)
(*result8=Series[section8/.{pt2->q^2},{q,0,2}]/5;*)


(* ::Input:: *)
(*result9=Series[section9/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0,*)
(*Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[St]]->q*st*Sin[\[Theta]t-\[Theta]s]},{q,0,1}]*)


(* ::Input:: *)
(*result10=Series[section10/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[St]]->q*st*Sin[\[Theta]t-\[Theta]s]},{q,0,1}]*)


(* ::Input:: *)
(*result11=Series[section11/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0,*)
(*Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[St]]->q*st*Sin[\[Theta]t-\[Theta]s]},{q,0,1}]/3*)


(* ::Input:: *)
(*result12=Series[section12/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0,*)
(*Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[St]]->q*st*Sin[\[Theta]t-\[Theta]s]},{q,0,1}]/5*)


(* ::Input:: *)
(*result13=Simplify[Series[section13/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,1}],{q>0}];*)


(* ::Input:: *)
(*result14=Simplify[Series[section14/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,1}],{q>0}];*)
(**)


(* ::Input:: *)
(*result15=Simplify[Series[section15/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0*)
(*},{q,0,1}]/3,{q>0}];*)


(* ::Input:: *)
(*result16=Simplify[Series[section16/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0*)
(**)
(*},{q,0,1}]/5,{q>0}];*)


(* ::Input:: *)
(*result17=Simplify[Series[Series[Mp^3*section13/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,3}],{Mp,0,0}],{q>0}]*)


(* ::Input:: *)
(*result18=Simplify[Series[Series[Mp^3*section14/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,3}],{Mp,0,0}],{q>0}]*)


(* ::Input:: *)
(*result19=Simplify[Series[Series[Mp^3*section15/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,3}],{Mp,0,0}]/3,{q>0}]*)


(* ::Input:: *)
(*result20=Simplify[Series[Series[Mp^3*section16/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,3}],{Mp,0,0}]/5,{q>0}]*)


(* ::Input:: *)
(*result21=Simplify[Series[section17/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result22=Simplify[Series[section18/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result23=Simplify[Series[section19/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/3,{q>0}]*)


(* ::Input:: *)
(*result24=Simplify[Series[section20/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/5,{q>0}]*)


(* ::Input:: *)
(*result25=Simplify[Series[section21/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result26=Simplify[Series[section22/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result27=Simplify[Series[section23/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/3,{q>0}]*)


(* ::Input:: *)
(*result28=Simplify[Series[section24/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\!\(TraditionalForm\`\[Theta]t\)],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/5,{q>0}]*)


(* ::Input:: *)
(*result29=Simplify[Series[section25/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result30=Simplify[Series[section26/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result31=Simplify[Series[section27/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/3,{q>0}]*)


(* ::Input:: *)
(*result32=Simplify[Series[section28/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/5,{q>0}]*)


(* ::Input:: *)
(*result33=Simplify[Series[section29/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result34=Simplify[Series[section30/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result35=Simplify[Series[section31/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/3,{q>0}]*)


(* ::Input:: *)
(*result36=Simplify[Series[section32/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/5,{q>0}]*)


(* ::Input:: *)
(*result37=Simplify[Series[section33/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result38=Simplify[Series[section34/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}],{q>0}]*)


(* ::Input:: *)
(*result39=Simplify[Series[section35/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/3,{q>0}]*)


(* ::Input:: *)
(*result40=Simplify[Series[section36/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,2}]/5,{q>0}]*)


(* ::Input:: *)
(*result41=Simplify[Series[section37/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,0}],{q>0}]*)


(* ::Input:: *)
(*result42=Simplify[Series[section38/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,0}],{q>0}]*)


(* ::Input:: *)
(*result43=Simplify[Series[section39/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,0}]/3,{q>0}]*)


(* ::Input:: *)
(*result44=Simplify[Series[section40/.{pt2->q^2,Eps[Momentum[n],Momentum[P],Momentum[pt],Momentum[q]]->0,Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[pt]]->-q*Sin[\[Theta]t],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[pt]]->0,*)
(*Eps[Momentum[lt],Momentum[n],Momentum[P],Momentum[St]]->-st*Sin[\[Theta]s],*)
(*Eps[Momentum[n],Momentum[P],Momentum[PQ],Momentum[St]]->st*q*(Cos[\[Theta]t]*Sin[\[Theta]s]-Sin[\[Theta]t]*Cos[\[Theta]s]),*)
(*Eps[Momentum[n],Momentum[P],Momentum[q],Momentum[St]]->0},{q,0,0}],{q>0}]*)


(* ::Section:: *)
(*7.Final Result*)


(* ::Subsection:: *)
(*SUU_1*)


(* ::Input:: *)
(*out1=Simplify[Collect[(result1+result2+result3+result4)*(MQ^2*y^2),y]]*)


(* ::Subsection:: *)
(*SUU_2*)


(* ::Input:: *)
(* out2=Simplify[Collect[(result5+result6+result7+result8)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*STU_1*)


(* ::Input:: *)
(* out3=Simplify[Collect[(result9+result10+result11+result12)*(MQ^2*y^2),y]]*)


(* ::Subsection:: *)
(*STU_2*)


(* ::Input:: *)
(* out4=Simplify[Collect[(result13+result14+result15+result16)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*STU_3*)


(* ::Input:: *)
(* out5=Simplify[Collect[(result17+result18+result19+result20)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*SLU*)


(* ::Input:: *)
(* out6=Simplify[Collect[(result21+result22+result23+result24)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*AUU_1*)


(* ::Input:: *)
(*out7=Simplify[Collect[(result25+result26+result27+result28)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*AUU_2*)


(* ::Input:: *)
(*out8=Simplify[Collect[(result29+result30+result31+result32)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*ATU_1*)


(* ::Input:: *)
(*out9=Simplify[Collect[(result33+result34+result35+result36)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*ATU_2*)


(* ::Input:: *)
(*out10=Simplify[Collect[(result37+result38+result39+result40)*(MQ^2*y^2),y-1]]*)


(* ::Subsection:: *)
(*ALU*)


(* ::Input:: *)
(*out11=Simplify[Collect[(result41+result42+result43+result44)*(MQ^2*y^2),y-2]]*)
