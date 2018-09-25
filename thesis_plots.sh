##Set enviroment

export THESIS_PLOTS="~/thesis/plots"
set_analysis

##Plot number of b jets distribution
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter nbtag

##Plot number of jets distribution
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter njets

##Plot m_vis
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter m_vis  

##Pt for ZTT 
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter pt_1 pt_2 --data Blinded --weight "m_vis<60 && nbtag==0" --name-suffix _ZTTCR

##Pt for TT
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter pt_1 pt_2 --data Blinded --weight "nbtag>0" --name-suffix _TTBARCR

##BDT input parameter in CR
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter pt_1 pt_2 dphi_ll pt_ll met d0_1 d0_2 dphi_l1met dphi_l2met E_Z mt_Z dphi_l1Z dphi_l2Z dtheta_ll --data Unblinded --weight "m_vis<60 && nbtag==0" --name-suffix _CR

##BDT input parameter with signal
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter pt_1 pt_2 dphi_ll pt_ll met d0_1 d0_2 dphi_l1met dphi_l2met E_Z mt_Z dphi_l1Z dphi_l2Z dtheta_ll --name-suffix _withsignal

##BDT score inclusive no signal
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter BDT_score 

##BDT score in ZTT and TT CR
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter BDT_score --data Blinded --weight "m_vis<60 && nbtag==0" --name-suffix _ZTTCR
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPlots.py --channel em et mt --parameter BDT_score --data Blinded --weight "nbtag==2" --name-suffix _TTBARCR


##Pre fit/post fit plots
python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioPrePostPlots.py --channel em et mt


##Limit plots
#python HiggsAnalysis/KITHiggsToTauTau/scripts/FlavioLimitPlots.py --channel all --method BDT

##Go back to thesis directory
cd ~/thesis


