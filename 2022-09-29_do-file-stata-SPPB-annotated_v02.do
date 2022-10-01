********************************************************************************************************************************************************************************************************** 
***SYNTAX FOR "Value of the Short Physical Performance Battery (SPPB) for predicting adverse health outcomes in older adults: A 14-year follow-up from the English Longitudinal Study of Ageing (ELSA)"***
**********************************************************************************************************************************************************************************************************

* STATA version: 17.0, BE-Basic Edition

* STATA citation: StataCorp. 2021. Stata Statistical Software: Release 17. College Station, TX: StataCorp LLC. 

* Data citation: Banks, J., Batty, G. David, Breedvelt, J., Coughlin, K., Crawford, R., Marmot, M., Nazroo, J., Oldfield, Z., Steel, N., Steptoe, A., Wood, M., Zaninotto, P. (2021). English Longitudinal Study of Ageing: Waves 0-9, 1998-2019. [data collection]. 37th Edition. UK Data Service. SN: 5050, DOI: 10.5255/UKDA-SN-5050-24

* Data access statement: ELSA data from all waves are available through the UK Data Service (https://ukdataservice.ac.uk/). The main ELSA dataset is safeguarded and can be accessed via https://beta.ukdataservice.ac.uk/datacatalogue/studies/study?id=5050#!/access-data. More information on how to access ELSA, including the conditions of use, can be found on the UK Data Service website (https://beta.ukdataservice.ac.uk/datacatalogue/studies/study?id=5050#!/details) and the ELSA website (https://www.elsa-project.ac.uk/accessing-elsa-data).

* Date of data access/download (dd/mm/yyyy): 01/06/2022

* Project ID: 224672

* Data documentation: Documentation pertaining to ELSA (e.g., data dictionaries, questionnaires, technical reports, user guides) is available on the UK Data Service website (https://beta.ukdataservice.ac.uk/datacatalogue/studies/study?id=5050#!/documentation) and the ELSA website (https://www.elsa-project.ac.uk/data-and-documentation).

*********************
***DATA PROCESSING***
*********************

* Change working directory - add pathname in between quotation marks for Windows
cd ""

* Variables Wave 2
use idauniq sampsta finstat w2nssec8 w2nssec5 w2nssec3 couple DhSex dhager indager diagr DiSex indsex fqethnr Hehelf Heill Helim HeActa HeActb HeActc DiMar wpdes wpdesc CfMetM CfMetMT CfDatD CfDatM CfDatY CfDay CfWrds CfDScr CfTest CfLisEn CfAni CfMem CfMemS CfPAScr CfLisD CfLitSK cflitoc CfLitB CfLitC CfLitD CfLitE CfImp CfWhZ1 CfWhZ2 CfWhZ3 nncorre nnmisse nnrow nnclm nrowcl PScedA PScedB PScedC PScedD PScedE PScedF PScedG PScedH HHTot HeSmk HESka HeSkd HeSke HeSkf Hestop hestopc HECig HeSkb HeTba HETbb HeSkc HeTbc HETbd Hecgstp Hecgsta Hecgnic Henictk scako scal7a scal7b MmSchs MmAlone MmHSS MmWill MmSaf MmAvsp MmWala MmTrya MMWlkA MmTryb MMWlkB MmPain MmRecR mmrecrc MmAid mmaidc MMcomZ1 MMcomZ2 MMcomZ3 heada01 heada02 heada03 heada04 heada05 heada06 heada07 heada08 heada09 heada10 headb01 headb02 headb03 headb04 headb05 headb06 headb07 headb08 headb09 headb10 headb11 headb12 headb13 HeFla HeFlb HeFlc HeFld HeFle HeFlf w2wgt scw2wgt using wave_2_core_data_v4.dta
* Describe dataset
describe
* Sort from lowest to highest participant identifier (ID)
sort idauniq
* Rename variables to shorter or more convenient forms 
rename DhSex dhsex
rename DiSex disex
rename Hehelf hehelf
rename Heill heill
rename Helim helim
rename HeActa heacta
rename HeActb heactb
rename HeActc heactc
rename DiMar dimar
rename CfMetM cfmetm
rename CfMetMT cfmetmt
rename CfDatD cfdatd
rename CfDatM cfdatm
rename CfDatY cfdaty
rename CfDay cfday
rename CfWrds cfwrds
rename CfDScr cfdscr
rename CfTest cftest
rename CfLisEn cflisen
rename CfAni cfani 
rename CfMem cfmem 
rename CfMemS cfmems 
rename CfPAScr cfpascr 
rename CfLisD cflisd
rename CfLitSK cflitsk 
rename CfLitB cflitb 
rename CfLitC cflitc 
rename CfLitD cflitd 
rename CfLitE cflite 
rename CfImp cfimp 
rename CfWhZ1 cfwhz1
rename CfWhZ2 cfwhz2 
rename CfWhZ3 cfwhz3 
rename PScedA psceda
rename PScedB pscedb 
rename PScedC pscedc 
rename PScedD pscedd 
rename PScedE pscede 
rename PScedF pscedf 
rename PScedG pscedg 
rename PScedH pscedh 
rename HHTot hhtot
rename HeSmk hesmk 
rename HESka heska 
rename HeSkd heskd 
rename HeSke heske 
rename HeSkf heskf 
rename Hestop hestop 
rename HECig hecig 
rename HeSkb heskb 
rename HeTba hetba 
rename HETbb hetbb
rename HeSkc heskc 
rename HeTbc hetbc 
rename HETbd hetbd 
rename Hecgstp hecgstp 
rename Hecgsta hecgsta 
rename Hecgnic hecgnic 
rename Henictk henictk 
rename MmSchs mmschs 
rename MmAlone mmalone 
rename MmHSS mmhss 
rename MmWill mmwill
rename MmSaf mmsaf 
rename MmAvsp mmavsp 
rename MmWala mmwala
rename MmTrya mmtrya 
rename MMWlkA mmwlka 
rename MmTryb mmtryb 
rename MMWlkB mmwlkb 
rename MmPain mmpain 
rename MmRecR mmrecr 
rename MmAid mmaid 
rename MMcomZ1 mmcomz1
rename MMcomZ2 mmcomz2 
rename MMcomZ3 mmcomz3
rename HeFla hefla 
rename HeFlb heflb 
rename HeFlc heflc 
rename HeFld hefld 
rename HeFle hefle 
rename HeFlf heflf
* Generate a new variable called wave and assign the number 2 to each observation (to designate Wave 2)
gen wave = 2
* Save Wave 2 core dataset
save wave2.dta

* Variables Wave 2 Derived
use idauniq w2edqual using wave_2_derived_variables.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Save Wave 2 derived dataset
save wave2derived.dta

* Variables Wave 2 Financial Derived
use idauniq totwq5_bu_s using wave_2_financial_derived_variables.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Save Wave 2 financial derived dataset 
save wave2financial.dta

* Variables Wave 2 Nurse
use idauniq mmbcsc mmsssc mmssre mmssti mmssna mmstsc mmstre mmstti mmstna mmftsc mmftre2 mmftti mmftna mmcrav mmcrsc mmcrre mmcrna mmrrsc mmrrre mmrrfti mmrrtti mmrroc mmrrna height ehtm estht htval htok relhite hinrel weight ewtkg estwt wtval wtok relwait bmi bmival bmiok bmiobe using wave_2_nurse_data_v2.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Save Wave 2 nurse dataset
save wave2nurse.dta

* Wave 2 complete data
* Merge core, derived, financial, and nurse datasets for Wave 2 using the participant ID
* Use Wave 2 core dataset
use wave2.dta
* One-to-one merge of data in memory with wave2derived.dta on participant ID
merge 1:1 idauniq using wave2derived.dta, generate (merge_derived2)
* Overwrite Wave 2 dataset, by replacing the previously saved file
save wave2.dta, replace
* Use the newly saved file for Wave 2
use wave2.dta
* One-to-one merge of data in memory with wave2financial.dta on participant ID
merge 1:1 idauniq using wave2financial.dta, generate (merge_financial2)
* Overwrite Wave 2 dataset, by replacing the previously saved file
save wave2.dta, replace
* Use the newly saved file for Wave 2
use wave2.dta
* One-to-one merge of data in memory with wave2nurse.dta on participant ID
merge 1:1 idauniq using wave2nurse.dta, generate (merge_nurse2)
* Sort from lowest to highest participant ID
sort idauniq
* Overwrite Wave 2 dataset, by replacing the previously saved file
save wave2.dta, replace

* Variables Wave 3
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma headlpr headlsh headlph headlme headlho headlmo headl96 hefla heflb heflc using wave_3_elsa_data_v4.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 3 to each observation (to designate Wave 3)
gen wave = 3
* Save Wave 3 core dataset
save wave3.dta

* Variables Wave 4
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma headlda headlpr headlsh headlte headlco headlme headlho headlmo headl96 hefla heflb heflc hefld hefle heflf using wave_4_elsa_data_v3.dta
* Rename variables to ensure consistency across waves
rename headlte headlph
rename headlco headlsp
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 4 to each observation (to designate Wave 4)
gen wave = 4
* Save Wave 4 core dataset
save wave4.dta

* Variables Wave 5
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma headlda headlpr headlsh headlte headlco headlme headlho headlmo headl96 hefla heflb heflc using wave_5_elsa_data_v4.dta
* Rename variables to ensure consistency across waves
rename headlte headlph
rename headlco headlsp
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 5 to each observation (to designate Wave 5)
gen wave = 5
* Save Wave 5 core dataset
save wave5.dta

* Variables Wave 6
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma HeADLda headlpr headlsh headlph headlco headlme headlho headlmo headl96 HeFla HeFlb HeFlc using wave_6_elsa_data_v2.dta
* Rename variables to ensure consistency across waves
rename HeADLda headlda
rename headlco headlsp
rename HeFla hefla
rename HeFlb heflb
rename HeFlc heflc
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 6 to each observation (to designate Wave 6)
gen wave = 6
* Save Wave 6 core dataset
save wave6.dta

* Variables Wave 7
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma HeADLda headlpr headlsh headlph HeADLsp headlme headlho headlmo headl96 HeFla HeFlb HeFlc using wave_7_elsa_data.dta
* Rename variables to ensure consistency across waves
rename HeADLda headlda
rename HeADLsp headlsp
rename HeFla hefla
rename HeFlb heflb
rename HeFlc heflc
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 7 to each observation (to designate Wave 7)
gen wave = 7
* Save Wave 7 core dataset
save wave7.dta

* Variables Wave 8
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma headlda headlpr headlsh headlph headlsp headlme headlho headlmo headl96 hefla heflb heflc hefle heflf using wave_8_elsa_data_eul_v2.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 8 to each observation (to designate Wave 8)
gen wave = 8
* Save Wave 8 core dataset
save wave8.dta

* Variables Wave 9
use idauniq hemobwa hemobsi hemobch hemobcs hemobcl hemobst hemobre hemobpu hemobli hemobpi hemob96 headldr headlwa headlba headlea headlbe headlwc headlma headlda headlpr headlsh headlph headlsp headlme headlho headlmo headl96 hefla heflb heflc using wave_9_elsa_data_eul_v1.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Generate a new variable called wave and assign the number 9 to each observation (to designate Wave 9)
gen wave = 9
* Save Wave 9 core dataset
save wave9.dta

* Append Wave 3 dataset to Wave 2 dataset
use wave2.dta
append using wave3.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Append Wave 4 dataset
append using wave4.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Append Wave 5 dataset
append using wave5.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Append Wave 6 dataset
append using wave6.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Append Wave 7 dataset
append using wave7.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Append Wave 8 dataset
append using wave8.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Append Wave 9 dataset
append using wave9.dta
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Assign a number in ascending order to each row of observations
gen ascnr = _n

* Organising dataset
* Generate a variable that assigns the observation number (i.e., 1 for first data collection timepoint, 2 for second data collection timepoint etc.) to each row by participant ID
bysort idauniq (wave): gen obsnr = _n
* Generate a variable that assigns the number of total observations to each row of data for a given participant
bysort idauniq: gen obscount = _N
* Check how many participants have data at 1 to 8 timepoints - the "if obsnr==1" statement is used to prevent participants with data at more than one timepoint from contributing to the counts more than once
tabulate obscount if obsnr==1
* Generate a variable that assigns the number 1 to the row representing participants' first observation
bysort idauniq (wave): gen first = 1 if _n==1
* Generate a variable that assigns the number 1 to the row representing participants' last observation
bysort idauniq (wave): gen last = 1 if _n==_N
* Generate a variable that assigns the number 1 to the row representing participants' first observation if this corresponds to Wave 2 (baseline)
bysort idauniq (wave): gen firstwave = 1 if obsnr==1 & wave==2
* Carry the value of this last variable forwards to the remainder of a participant's observations 
bysort idauniq: gen firstwave_cons = firstwave[1]
* Install unique command
ssc install unique
* Count total number of participants and observations
unique idauniq
* 19,807 individuals, 80,750 observations
* Save dataset with a new name
save raw.dta

* Time-constant core sample member - Wave 2
* Generate a new variable duplicating the sampsta variable at Wave 2
gen coresample = sampsta if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Install carryforward command
ssc install carryforward
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves available for that participant) by participant ID
bysort idauniq: carryforward coresample, replace
* Generate a new variable duplicating the finstat variable at Wave 2
gen status = finstat if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves available for that participant) by participant ID
bysort idauniq: carryforward status, replace
* Keep if participant is a core member (include core members who had a proxy or partial interview or those who had been interviewed in an institution)
keep if status=="C1CM"
* Count total number of participants and observations
unique idauniq
* 8,780 individuals, 45,470 observations
* Replace age = 90 if participant is aged 90+ years (collapsed in ELSA and coded as 99 at Wave 2)
replace indager = 90 if indager==99
* Save dataset with a new name
save data.dta

* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Generate a completely balanced dataset (i.e., all participants have a row for each wave from 2 to 8)
tsfill, full
* Assign the Wave 2 cross-sectional weight to all observations for a participant (completely balanced dataset)
gen w2xwgt = w2wgt if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves available for that participant) by participant ID
bysort idauniq: carryforward w2xwgt, replace
* Count total number of participants and observations
unique idauniq
* 8,780 individuals, 70,240 observations

* Occupational class - NS-SEC 8 and 3 category classification (Wave 2)
tab w2nssec3 
tab w2nssec5 
tab w2nssec8
* Excluded Never worked and long-term unemployed
* Generate a new variable
gen mynssec3 = .
* Assign the number 2 if the participant's current or most recent occupation was coded as: Higher managerial and professional occupations; or Lower managerial and professional occupations
replace mynssec3 = 2 if inlist(w2nssec8,1,2)
* Assign the number 1 if the participant's current or most recent occupation was coded as: Intermediate occupations; or Small employers and own account workers
replace mynssec3 = 1 if inlist(w2nssec8,3,4)
* Assign the number 0 if the participant's current or most recent occupation was coded as: Lower supervisory and technical occupations; or Semi-routine occupations; or Routine occupations
replace mynssec3 = 0 if inlist(w2nssec8,5,6,7)
* Coding of final occupational class variable:
* 0: Lower occupations
* 1: Intermediate occupations
* 2: Higher occupations

* Time-constant occupational class - Wave 2
* Generate a new variable duplicating the mynssec3 variable at Wave 2
gen mynssec3_cons = mynssec3 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward mynssec3_cons, replace

* Biological sex (Wave 2)
tab dhsex
tab disex
tab indsex
* Generate a new variable
gen sex = .
* Assign the number 0 if the participant is male
replace sex = 0 if disex == 1
* Assign the number 1 if the participant is female
replace sex = 1 if disex == 2
* Coding of the final biological sex variable:
* 0: Male, 1: Female

* Time-constant biological sex - Wave 2
* Generate a new variable duplicating the sex variable at Wave 2
gen sex_cons = sex if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward sex_cons, replace

* Age (Wave 2)
* Replace age = 90 if participant is aged 90+ years (collapsed in ELSA and coded as 99 at Wave 2)
replace dhager = 90 if dhager==99
replace diagr = 90 if diagr==99
tab dhager 
tab indager 
tab diagr 

* Time-constant age - Wave 2
* Generate a new variable duplicating the indager variable at Wave 2
gen age_cons = indager if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward age_cons, replace

* Ethnicity (Wave 2)
* Generate a new variable
gen ethnicity = .
* Assign the number 0 if the participant is White
replace ethnicity = 0 if fqethnr == 1
* Assign the number 1 if the participant is Non-White
replace ethnicity = 1 if fqethnr == 2
* Coding of the final ethnicity variable:
* 0: White, 1: Non-White

* Time-constant ethnicity - Wave 2
* Generate a new variable duplicating the ethnicity variable at Wave 2
gen eth_cons = ethnicity if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward eth_cons, replace

* Self-reported general health (Wave 2)
* Generate a new variable duplicating the self-reported general health variable
gen health = hehelf
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace health = . if health<0
* Reverse the self-rated health variable (this creates a new variable and adds the "rev" prefix to the original variable name)
revrs health
* Coding of the final self-reported general health variable:
* 1: Poor
* 2: Fair
* 3: Good
* 4: Very good
* 5: Excellent

* Time-constant self-reported general health - Wave 2
* Generate a new variable duplicating the reversed (revhealth) self-reported general health variable at Wave 2
gen health_cons = revhealth if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward health_cons, replace

* Limiting long-standing illness (Wave 2)
* Generate a new variable and assign the number 0 for participants with no long-standing illness or ("|") a long-standing illness that is not limiting 
gen limiting = 0 if heill == 2 | helim == 2
* Assign the number 1 for participants with a limiting long-standing illness
replace limiting = 1 if helim == 1
* Coding of the final limiting long-standing illness variable:
* 0: No long-standing illness or not limiting, 1: Limiting long-standing illness

* Time-constant limiting long-standing illness - Wave 2
* Generate a new variable duplicating the limiting variable at Wave 2
gen limiting_cons = limiting if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward limiting_cons, replace

* Physical activity (Wave 2)
* Generate a new variable
gen activity = .
* Assign the number 3 if the participant partakes in vigorous activity more than once a week or once a week
replace activity = 3 if heacta==1 | heacta==2
* Assign the number 2 if the participant partakes in moderate activity more than once a week or once a week, and takes part in vigorous activity less than once a week
replace activity = 2 if (heactb==1 | heactb==2) & inlist(heacta,3,4)
* Assign the number 1 if the participant partakes in mild activity more than once a week or once a week, and takes part in moderate and vigorous activities less than once a week
replace activity = 1 if (heactc==1 | heactc==2) & inlist(heacta,3,4) & inlist(heactb,3,4)
* Assign the number 0 if the participant does not take part in activity of any intensity once a week or more
replace activity = 0 if inlist(heacta,3,4) & inlist(heactb,3,4) & inlist(heactc,3,4)
* Replace the variable as missing for participants with missing cases on all three variables
replace activity = . if inlist(heacta,.) & inlist(heactb,.) & inlist(heactc,.)
* Coding of final physical activity variable:
* 3: Vigorous activity at least once per week
* 2: At least moderate but no vigorous activity at least once per week
* 1: Only mild activity at least once per week
* 0: Inactive (no activity on a weekly basis)

* Time-constant physical activity - Wave 2
* Generate a new variable duplicating the activity variable at Wave 2
gen activity_cons = activity if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward activity_cons, replace

* Marital status (Wave 2)
* Generate a new variable
gen marital = .
* Assign the number 0 if the participant's marital status was coded as: Single, that is never married
replace marital = 0 if dimar == 1
* Assign the number 1 if the participant's marital status was coded as: Legally separated; or Divorced; or Widowed
replace marital = 1 if inlist(dimar,4,5,6)
* Assign the number 2 if the participant's marital status was coded as: Married, first and only marriage; or Remarried, second or later marriage
replace marital = 2 if inlist(dimar,2,3)
* Coding of the final marital status variable: 
* 0: Single/Never married
* 1: Separated/Divorced/Widowed
* 2: Married/Remarried

* Time-constant marital status - Wave 2
* Generate a new variable duplicating the marital variable at Wave 2
gen marital_cons = marital if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward marital_cons, replace

* Employment status (Wave 2)
* Generate a new variable
gen employment = .
* Assign the number 0 if the participant's employment status was coded as: Retired; or Unemployed; or Permanently sick or disabled; or Looking after home or family
replace employment = 0 if inlist(wpdes,1,4,5,6)
* Assign the number 1 if the participant's employment status was coded as: Employed; or Self-employed; or SPONTANEOUS: Semi-retired
replace employment = 1 if inlist(wpdes,2,3,96)
* Coding of the final employment status variable:
* 0: Not working, 1: Working full- or part-time

* Time-constant employment status - Wave 2
* Generate a new variable duplicating the employment variable at Wave 2
gen employment_cons = employment if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave" 
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward employment_cons, replace

* Cognitive function (Wave 2)
* Orientation in time - use oribi
* Generate a new variable duplicating the cfdatd variable
gen daymonth = cfdatd
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace daymonth = . if daymonth<0
* Assign the number 0 if the participant answered incorrectly or didn't know the answer
replace daymonth = 0 if daymonth==2
* Generate a new variable duplicating the cfday variable
gen day = cfday
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace day = . if day<0
* Assign the number 0 if the participant answered incorrectly or didn't know the answer
replace day = 0 if day==2
* Generate a new variable duplicating the cfdaty variable
gen year = cfdaty
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace year = . if year<0
* Assign the number 0 if the participant answered incorrectly or didn't know the answer
replace year = 0 if year==2
* Generate a new variable duplicating the cfdatm variable
gen month = cfdatm
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace month = . if month<0
* Assign the number 0 if the participant answered incorrectly or didn't know the answer
replace month = 0 if month==2
* Generate a new variable equal to the sum of the four orientation in time items to create a total score
gen orientation = daymonth + day + year + month
gen orientation2 = cfdscr if cfdscr>=0
* Generate a new variable and assign the number 0 for participants who scored 0, 1, 2, or 3 points on the time orientation test
gen oribi = 0 if inlist(orientation,0,1,2,3)
* Assign the number 1 for participants who answered all questions correctly (i.e., scored 4) on the time orientation test
replace oribi = 1 if orientation==4
* Coding of the final orientation in time variable:
* 0: No/some answers correct, 1: All answers correct
* Word-list learning (verbal learning and recall) - use wordlist
tab cftest
tab cfwrds
* Generate a new variable duplicating the cflisen variable for participants with a score from 0 to 10 
gen learning = cflisen if cflisen>=0
* Generate a new variable duplicating the cflisd variable for participants with a score from 0 to 10 
gen recall = cflisd if cflisd>=0
* Generate a new variable equal to the sum of the verbal learning and recall items to create a total score
gen wordlist = learning + recall
gen learning2 = learning if wordlist!=.
gen recall2 = recall if wordlist!=.
* Prospective memory - use prosbi2
tab cfmem 
tab cfmems 
tab cfpascr
* Generate a new variable
gen prosbi2 = .
* Assign the number 1 for participants who performed both correct actions with no prompt given
replace prosbi2 = 1 if inlist(cfmems,1) & cfmem==1
* Assign the number 0 for participants who performed 0 or 1 correct actions with no prompt given 
replace prosbi2 = 0 if inlist(cfmems,2,3,4,5) & cfmem==1
* Assign the number 0 for participants who performed 0, 1, or both correct actions with a prompt
replace prosbi2 = 0 if inlist(cfmems,1,2,3,4,5) & cfmem==2
* Word-finding (verbal fluency, # animals)
tab cfani
* Generate a new variable duplicating the cfani variable for participants with a score of 0 or more
gen fluency = cfani if cfani>=0
* Letter cancellation (accuracy and speed of mental processing) - use nrowclme2 and efficiency
tab nncorre 
tab nnmisse 
tab nnrow 
tab nnclm 
tab nrowcl 
* Generate a new variable equal to the total number of letters searched
gen nrowclme = (30*(nnrow-1)+nnclm)
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace nrowclme = . if nrowclme<0
* Generate a new variable duplicating the nrowclme variable for participants searching more than one letter
gen nrowclme2 = nrowclme if nrowclme>1
* Generate a new variable duplicating the nncorre variable for participants getting 0 or more correct
gen correct = nncorre if nncorre>=0
* Generate a new variable duplicating the nnmisse variable for participants who missed 0 or more letters
gen missed = nnmisse if nnmisse>=0
* Generate a new variable representing the percentage of correct letters cancelled relative to the total number of letters to be cancelled in the rows and columns screened by the participant
gen efficiency = (correct/(correct+missed))*100
gen total = correct + missed

* Time-constant orientation in time variable - Wave 2
* Generate a new variable duplicating the orientation in time (oribi) variable at Wave 2
gen oribi_cons = oribi if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward oribi_cons, replace

* Time-constant immediate and delayed recall - Wave 2
* Generate a new variable duplicating the immediate and delayed recall (wordlist) variable at Wave 2
gen wordlist_cons = wordlist if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward wordlist_cons, replace

* Time-constant prospective memory - Wave 2
* Generate a new variable duplicating the prospective memory (prosbi2) variable at Wave 2
gen prosbi2_cons = prosbi2 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward prosbi2_cons, replace

* Time-constant verbal fluency - Wave 2
* Generate a new variable duplicating the verbal fluency variable at Wave 2
gen fluency_cons = fluency if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward fluency_cons, replace

* Time-constant processing speed - Wave 2
* Generate a new variable duplicating the processing speed (nrowclme2) variable at Wave 2
gen nrowclme2_cons = nrowclme2 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward nrowclme2_cons, replace

* Time-constant processing efficiency - Wave 2
* Generate a new variable duplicating the processing efficiency variable at Wave 2
gen efficiency_cons = efficiency if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward efficiency_cons, replace

* Save dataset with a new name
save data01.dta

* Depressive symptoms (Wave 2)
* Recode to the number 0 if participant answered "No" (items psceda-pscedc are reverse-coded)
replace psceda = 0 if psceda==2
replace pscedb = 0 if pscedb==2
replace pscedc = 0 if pscedc==2

* Recode to the number 0 if participant answered "Yes"
replace pscedd = 0 if pscedd==1
* Recode to the number 1 if participant answered "No"
replace pscedd = 1 if pscedd==2

* Recode to the number 0 if participant answered "No" (item pscede is reverse-coded)
replace pscede = 0 if pscede==2

* Recode to the number 0 if participant answered "Yes"
replace pscedf = 0 if pscedf==1
* Recode to the number 1 if participant answered "No"
replace pscedf = 1 if pscedf==2

* Recode to the number 0 if participant answered "No" (items pscedg-pscedh are reverse-coded)
replace pscedg = 0 if pscedg==2
replace pscedh = 0 if pscedh==2

* Generate new variables duplicating psceda-pscedh, but excluding missing cases (coded as negative numbers in the ELSA dataset)
gen ceda = psceda if psceda>=0
gen cedb = pscedb if pscedb>=0
gen cedc = pscedc if pscedc>=0
gen cedd = pscedd if pscedd>=0
gen cede = pscede if pscede>=0
gen cedf = pscedf if pscedf>=0
gen cedg = pscedg if pscedg>=0
gen cedh = pscedh if pscedh>=0

* Generate a new variable equal to the sum of depressive symptoms (eight items) to create a total depression score (range 0-8)
gen depression = ceda + cedb + cedc + cedd + cede + cedf + cedg + cedh

* Time-constant depressive symptoms - Wave 2
* Generate a new variable duplicating the depression variable at Wave 2
gen depression_cons = depression if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward depression_cons, replace

* Living status (Wave 2)
* Assign the number 0 if one person lives in household
replace hhtot = 0 if hhtot==1
* Assign the number 1 if more than one person lives in household
replace hhtot = 1 if hhtot>1 & hhtot != . 
* Coding of the final living status variable
* 0: Living alone, 1: Not living alone

* Time-constant living status - Wave 2
* Generate a new variable duplicating the hhtot variable at Wave 2
gen living_cons = hhtot if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward living_cons, replace

* Save dataset with a new name
save data02.dta

* Variables Wave 1
use idauniq hesmk heska heala using wave_1_core_data_v3.dta
* Describe dataset
describe
* Sort from lowest to highest participant ID
sort idauniq
* Rename variables to distinguish them as being from Wave 1 rather than from a wave considered in the statistical analyses
rename hesmk hesmkw1
rename heska heskaw1
* Generate a new variable called wave and assign the number 2 to each observation (such that the observations fall on the same row as those from Wave 2 when merged with the full dataset)
gen wave = 2
* Save Wave 1 core dataset
save wave1.dta

* Use full dataset
use data02.dta
* One-to-one merge of data in memory with wave1.dta on participant ID
merge 1:1 idauniq wave using wave1.dta, generate (merge_beha1)
* Drop observations that were not matched (i.e., that do not appear in both datasets)
drop if merge_beha1==2
* Sort by participant ID and wave (lowest to highest)
sort idauniq wave
* Count total number of participants and observations
unique idauniq
* 8,780 individuals, 70,240 observations

* Smoking status (Wave 1 and 2)
tab hesmk
tab hesmkw1
* Generate a new variable and assign the number 0 if the participant reported never having smoked cigarettes at Wave 2
gen smoking = 0 if hesmk==2 
* Assign the number 0 if the participant reported never having smoked cigarettes at Wave 1 and reported that they do not smoke cigarettes at all nowadays at Wave 2
replace smoking = 0 if hesmkw1==2 & heska==2
* Assign the number 1 if the participant reported having ever smoked cigarettes at Wave 1 or Wave 2 but reported that they do not smoke cigarettes at all nowadays at Wave 2
replace smoking = 1 if (hesmk==1 | hesmkw1==1) & heska==2
* Assign the number 2 if the participant reported smoking nowadays at Wave 2
replace smoking = 2 if heska==1
tab heskd
* Assign the number 0 if the participant disputed reported smoking from Wave 1 and said they had never smoked cigarettes, AND the participant reported that they do not smoke cigarettes at all nowadays at Wave 2
replace smoking = 0 if heske==1 & heska==2
* Assign the number 1 if the participant disputed reported smoking from Wave 1 and said they a) were no longer smoking cigarettes by the last wave (wave 1); or b) stopped smoking cigarettes between waves 1 and 2; AND the participant reported that they do not smoke cigarettes at all nowadayas at Wave 2
replace smoking = 1 if inlist(heske,2,3) & heska==2
* Assign the number 1 if the participant reported they stopped smoking cigarettes between waves 1 and 2 at Wave 2
replace smoking = 1 if heskf==2
* Assign the number 2 if the participant reported they do smoke cigarettes nowadays at Wave 2
replace smoking = 2 if heskf==1
* Coding of the final smoking status variable:
* 0: Never smoker
* 1: Former smoker 
* 2: Current smoker

* Time-constant smoking status - Wave 2
* Generate a new variable duplicating the smoking variable at Wave 2
gen smoking_cons = smoking if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward smoking_cons, replace

* Save dataset with a new name
save data03.dta

* Alcohol consumption (Wave 2)
* Generate a new variable and assign the number 0 if the participant reported having an alcoholic drink once a month or less during the last 12 months
gen alcohol = 0 if inlist(scako,5,6,7,8)
* Assign the number 1 if the participant reported having an alcoholic drink a) three or four days a week; or b) once or twice a week
replace alcohol = 1 if inlist(scako,3,4)
* Assign the number 2 if the participant reported having an alcoholic drink a) almost every day; or b) five or six days a week
replace alcohol = 2 if inlist(scako,1,2)
tab scal7a if scako<0
tab scal7b if scako<0
* Coding of the final alcohol consumption variable:
* 0: Less than once a week
* 1: One to four times per week 
* 2: Five or more times per week

* Time-constant alcohol consumption - Wave 2
* Generate a new variable duplicating the alcohol variable at Wave 2
gen alcohol_cons = alcohol if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward alcohol_cons, replace

* Education (Wave 2)
* Generate a new variable
gen education = .
* Assign the number 0 if the participant does not have any formal qualifications
replace education = 0 if w2edqual==7
* Assign the number 1 if the participant has A level equivalent, O level equivalent, or other grade equivalent
replace education = 1 if inlist(w2edqual,3,4,5)
* Assign the number 2 if the participant has completed some higher education (below degree), or has a degree or equivalent
replace education = 2 if inlist(w2edqual,1,2)
* Coding of the final education variable:
* 0: No formal qualifications
* 1: School qualifications 
* 2: Higher education

* Time-constant education - Wave 2
* Generate a new variable duplicating the education variable at Wave 2
gen education_cons = education if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward education_cons, replace

* Quintiles of BU total (non-pension) wealth (Wave 2)
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace totwq5_bu_s = . if totwq5_bu_s<0
* Coding of the final wealth variable:
* 1: 1st quintile (lowest)
* 2: 2nd quintile 
* 3: 3rd quintile 
* 4: 4th quintile 
* 5: 5th quintile (highest)

* Time-constant wealth - Wave 2
* Generate a new variable duplicating the wealth (totwq5_bu_s) variable at Wave 2
gen wealth_cons = totwq5_bu_s if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward wealth_cons, replace

* Body-mass index (BMI; Wave 2)
tab height
tab estht
tab htval
tab htok
tab relhite
tab weight
tab estwt
tab wtval
tab wtok
tab relwait
sum bmi if bmi>=0
sum bmival if bmival>=0
tab bmiok
tab bmiobe
sum idauniq if htok==1 & wtok==1
sum idauniq if htval!=-1 & wtval!=-1 & htval!=. & wtval!=.
sum weight if bmiok!=1 & bmival>=0
sum estwt if bmiok!=1 & bmival>=0
gen bmiraw = (wtval/((htval/100)*(htval/100))) if htval!=-1 & wtval!=-1 & htval!=. & wtval!=.
* BMI (continuous)
* Generate a new variable duplicating BMI values if data are not missing
gen bmic = bmival if bmival>=0 & bmival!=.

* Time-constant BMI - Wave 2
* Generate a new variable duplicating the continuous BMI (bmic) variable at Wave 2
gen bmic_cons = bmic if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward bmic_cons, replace

* Generate a new variable equal to height in metres if data are not missing
gen htvalnew = (htval/100) if htval!=-1 & htval!=. 
* Generate a new variable equal to weight in kg if data are not missing
gen wtvalnew = wtval if wtval!=-1 & wtval!=.

* Time-constant height - Wave 2
* Generate a new variable duplicating the continuous height (htvalnew) variable at Wave 2
gen htvalnew_cons = htvalnew if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward htvalnew_cons, replace

* Time-constant weight - Wave 2
* Generate a new variable duplicating the continuous weight (wtvalnew) variable at Wave 2
gen wtvalnew_cons = wtvalnew if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward wtvalnew_cons, replace

* Overwrite dataset, by replacing the previously saved file
save data03.dta, replace

* SPPB domains (Wave 2)
* Balance
tab mmbcsc
tab mmsssc
tab mmssre
tab mmsssc if mmssre==3
sum mmssti if mmssti!=-1
tab mmssre if mmssti!=-1
sum mmssna if mmssna!=-1
tab mmssna if mmssna!=-1
tab mmsssc if mmssna!=-1

tab mmstsc
tab mmstsc if mmssna!=-1
tab mmssre if mmstsc==-1
tab mmstre
tab mmstsc if mmstre==3
sum mmstti if mmstti!=-1
tab mmstre if mmstti!=-1
sum mmstna if mmstna!=-1
tab mmstna if mmstna!=-1
tab mmstsc if mmstna!=-1

tab mmftsc
tab mmftsc if mmstna!=-1
tab mmftsc if mmstti!=-1
tab mmftsc if mmssna!=-1 | mmssti!=-1
tab mmftre2
tab mmftsc if mmftre2==5
sum mmftti if mmftti!=-1
sum mmftti if inlist(mmftre2,2,4)
tab mmftre2 if mmftti!=-1
tab mmftre2 if inlist(mmftre2,2,4)
sum mmftti if mmftti >=3 & mmftti < 10
sum mmftti if mmftti < 3 & mmftti!=-1
tab mmftre2 if mmftti >=10 & mmftti!=.
sum mmftti if mmftti >=10 & mmftti!=.
sum mmftna if mmftna!=-1
tab mmftna if mmftna!=-1
tab mmftsc if mmftna!=-1

* Side-by-side stand
* Generate a new variable and assign the number 0 if the participant held for less than 10 seconds or did not attempt the stand
gen sidebyside = 0 if inlist(mmssre,2,3)
* Assign the number 1 if the participant held for 10 seconds
replace sidebyside = 1 if mmssre==1

* Semi-tandem stand 
* Generate a new variable and assign the number 0 if the participant scored 0 points in the side-by-side stand
gen semitandem = 0 if sidebyside==0
* Assign the number 0 if the participant held for less than 10 seconds or did not attempt the stand
replace semitandem = 0 if inlist(mmstre,2,3)
* Assign the number 1 if the participant held for 10 seconds
replace semitandem = 1 if mmstre==1

* Full tandem stand
* Generate a new variable and assign the number 0 if the participant did not attempt the stand or scored 0 points in the semi-tandem stand
gen tandem = 0 if (mmftre2 == 5 |semitandem == 0)
* Assign the number 2 if the participant held for at least 10 seconds, irrespective of age
replace tandem = 2 if (mmftre2 == 1 |mmftre2 == 3)
* Assign the number 1 if the participant held for at least 3 seconds but less than 10 seconds
replace tandem = 1 if mmftti >=3 & mmftti < 10
* Assign the number 0 if the participant held for less than 3 seconds and data are not missing
replace tandem = 0 if mmftti < 3 & mmftti!=-1
* Assign the number 2 if the participant held for at least 10 seconds (but less than 30 seconds) and was aged less than 70 years
replace tandem = 2 if mmftti >=10 & mmftti!=. & mmftre2==4

* Generate a new variable equal to the sum of the points scored on the side-by-side, semi-tandem, and full tandem stands (three items) to create a total balance score (range 0-4)
gen balance = sidebyside + semitandem + tandem

gen balance2 = 0 if inlist(mmssre,2,3)
replace balance2 = 1 if mmssre==1 & inlist(mmstre,2,3)
replace balance2 = 2 if mmstre==1 & tandem==0
replace balance2 = 3 if mmstre==1 & tandem==1
replace balance2 = 4 if mmstre==1 & tandem==2

* Repeated Chair Stand Test
tab mmcrav
* Generate a new variable and assign a missing value if there was no suitable chair available
gen repcstest = . if mmcrav==2
tab mmcrsc
tab mmcrre
tab mmcrre if mmcrav==2 | inlist(mmcrsc,-8,2)
* Assign the number 0 if the participant did not feel it was safe to attempt the single chair rise or the response was coded "Don't know"
replace repcstest = 0 if inlist(mmcrsc,-8,2)
* Assign the number 0 if the participant used their arms to stand in the single chair rise or did not complete the test
replace repcstest = 0 if inlist(mmcrre,2,3)
sum mmcrna if mmcrna!=-1
tab mmcrna if mmcrna!=-1
tab mmrrsc
tab mmcrre if mmrrsc==-1
tab mmrrre
tab mmrrsc if mmrrre==-1
tab mmrrre if inlist(mmrrsc,2,-1)
* Assign the number 0 if the participant did not feel it was safe to attempt multiple chair rises (and subsequently did not perform the multiple chair rise test)
replace repcstest = 0 if mmrrsc==2 & mmrrre==-1
* Assign the number 0 if the participant completed less than five sit-to-stands
replace repcstest = 0 if inlist(mmrrre,0,1,2,3,4)
tab mmrrfti if mmrrfti<0
sum mmrrfti if mmrrre>=5
sum mmrrfti if mmrrfti>=0
* Assign a missing value if the participant completed five or more sit-to-stands but their time to complete five rises was coded as "Don't know" or the test was not timed correctly
replace repcstest = . if inlist(mmrrfti,-8,-3) & mmrrre>=5
tab mmrrfti if mmrrfti>=0 & mmrrfti<4
* Assign a missing value if the participant completed five or more sit-to-stands but their time to complete five rises was equal to 1 second (i.e., outlier)
replace repcstest = . if mmrrfti==1 & inlist(mmrrre,5,6,7,8,9,10)
sum mmrrfti if mmrrfti<=11.19 & mmrrfti>=0
sum mmrrfti if mmrrfti<=11.19 & mmrrfti>1
* Assign the number 4 if the participant completed five sit-to-stands in less than or equal to 11.19 seconds and it took them more than 1 second
replace repcstest = 4 if mmrrfti <= 11.19 & mmrrfti > 1 & inlist(mmrrre,5,6,7,8,9,10)
sum mmrrfti if mmrrfti>=16.7 & mmrrfti<=60
* Assign the number 1 if the participant completed five sit-to-stands in 16.7 seconds or more but less than 60 seconds
replace repcstest = 1 if mmrrfti >= 16.7 & mmrrfti <= 60 & inlist(mmrrre,5,6,7,8,9,10)
sum mmrrfti if mmrrfti>=13.7 & mmrrfti<16.7
* Assign the number 2 if the participant completed five sit-to-stands in 13.7 seconds or more but less than 16.7 seconds
replace repcstest = 2 if mmrrfti >= 13.7 & mmrrfti < 16.7 & inlist(mmrrre,5,6,7,8,9,10)
sum mmrrfti if mmrrfti>=11.2 & mmrrfti<13.7
* Assign the number 3 if the participant completed five sit-to-stands in 11.2 seconds or more but less than 13.7 seconds
replace repcstest = 3 if mmrrfti >= 11.2 & mmrrfti < 13.7 & inlist(mmrrre,5,6,7,8,9,10)
sum mmrrfti if mmrrfti > 60
* Assign the number 0 if the participant completed five sit-to-stands in more than 60 seconds and data are not missing
replace repcstest = 0 if mmrrfti > 60 & mmrrfti <= 64 & inlist(mmrrre,5,6,7,8,9,10)

tab mmrrre if inlist(mmrroc,1,3)
tab mmrrre if mmrroc==2
tab mmrrre if mmrroc==4
tab mmrrre if inlist(mmrroc,1,2,3,4)

sum mmrrna if mmrrna!=-1
tab mmrrna if mmrrna!=-1
tab mmrrre if mmrrna!=-1 & inlist(mmrroc,3,4)
tab mmrrre if mmrrna!=-1 & inlist(mmrroc,1,2)
tab mmrrsc if mmrrna!=-1

* Overwrite dataset, by replacing the previously saved file
save data03.dta, replace

* Gait
tab mmschs if indager>=60
tab mmalone if indager>=60
tab mmschs if mmalone==-1 & indager>=60
tab mmschs if mmalone==-9 & indager>=60
tab mmschs if mmalone==-8 & indager>=60
tab mmschs if mmalone==1 & indager>=60
tab mmschs if mmalone==2 & indager>=60
tab mmschs if mmalone==3 & indager>=60
tab mmhss if indager>=60
tab mmalone if mmhss==-1 & indager>=60
tab mmalone if mmhss==-9 & indager>=60
tab mmalone if mmhss==-8 & indager>=60
tab mmalone if mmhss==1 & indager>=60
tab mmalone if mmhss==2 & indager>=60
tab mmalone if mmhss==3 & indager>=60
tab mmalone if mmhss==4 & indager>=60
tab mmwill if indager>=60
tab mmhss if mmwill==-9 & indager>=60
tab mmhss if mmwill==1 & indager>=60
tab mmhss if mmwill==2 & indager>=60
tab mmsaf if indager>=60
tab mmwill if mmsaf==1 & indager>=60
tab mmwill if mmsaf==2 & indager>=60
tab mmavsp if indager>=60
tab mmsaf if mmavsp==-9 & indager>=60
tab mmsaf if mmavsp==-8 & indager>=60
tab mmsaf if mmavsp==1 & indager>=60
tab mmsaf if mmavsp==2 & indager>=60
tab mmwala if indager>=60
tab mmavsp if inlist(mmwala,1,2) & indager>=60

tab mmtrya if indager>=60
tab mmwala if inlist(mmtrya,-9,1,2,3) & indager>=60
tab mmwlka if mmwlka<0 & indager>=60
sum mmwlka if mmwlka>=0 & indager>=60
tab mmtrya if mmwlka!=-1 & mmwlka!=. & indager>=60

tab mmtryb if indager>=60
tab mmtrya if inlist(mmtryb,-9,-8,1,2,3,4)
tab mmwlka if inlist(mmtryb,-9,-8)
tab mmwlkb if mmwlkb<0 & indager>=60
sum mmwlkb if mmwlkb>=0 & indager>=60
tab mmtryb if mmwlkb!=-1 & mmwlkb!=. & indager>=60

tab mmwlka if mmwlka>=0 & mmwlka<2
tab mmwlkb if mmwlkb>=0 & mmwlkb<2

sum idauniq if ((mmwlka>=0 & mmwlka!=.) | (mmwlkb>=0 & mmwlkb!=.)) & indager>=60
sum idauniq if mmwlka>=0 & mmwlkb>=0 & indager>=60 & mmwlka!=. & mmwlkb!=.

sum idauniq if mmwlka<0 & indager>=60
keep if mmwlka<0 & indager>=60
tab mmschs
tab mmalone
tab mmschs if mmalone==-1
tab mmschs if mmalone==3
tab mmschs if mmalone==-9
tab mmschs if mmalone==-8
tab mmhss
tab mmalone if mmhss==-1
tab mmwill
tab mmhss if mmwill==-1
tab mmsaf
tab mmwill if mmsaf==-1
tab mmavsp
tab mmsaf if mmavsp==-1
tab mmwala
tab mmavsp if mmwala==-1
tab mmtrya
tab mmwala if mmtrya==-1
tab mmwlka
tab mmtrya if mmwlka==-1

clear
* Use full dataset
use data03.dta

* Generate a new variable duplicating the "time taken for first walk" variable if data are not missing
gen walk1 = mmwlka if mmwlka>=0
* Generate a new variable duplicating the "time taken for second walk" variable if data are not missing
gen walk2 = mmwlkb if mmwlkb>=0
* Generate a new variable equal to the fastest time of the two walks (or the only time available if only one attempt was performed or recorded)
egen gaittime = rowmin(walk1 walk2) if (((mmwlka>=0 & mmwlka!=.) | (mmwlkb>=0 & mmwlkb!=.)) & indager>=60)
sum gaittime
sum gaittime if (mmwlka>=0 & mmwlka!=.) & (mmwlkb<0|mmwlkb==.)
sum mmwlka if (mmwlka>=0 & mmwlka!=.) & (mmwlkb<0|mmwlkb==.)

* Generate a new variable
gen gaittest = .
* Assign the number 1 if the participant completed the gait test in more than or equal to 5.7 seconds
replace gaittest = 1 if gaittime >= 5.7 & gaittime!=.
* Assign the number 2 if the participant completed the gait test in more than or equal to 4.1 seconds and less than 5.7 seconds
replace gaittest = 2 if gaittime >= 4.1 & gaittime < 5.7
* Assign the number 3 if the participant completed the gait test in more than or equal to 3.2 seconds and less than 4.1 seconds
replace gaittest = 3 if gaittime >= 3.2 & gaittime < 4.1
* Assign the number 4 if the participant completed the gait test in less than 3.2 seconds 
replace gaittest = 4 if gaittime < 3.2
* Assign the number 0 if a) the participant was not able to walk alone (with aid); b) a health condition (i.e., recent surgery, injury, other health condition) prevented the participant from walking; c) the interviewer felt it was not safe to continue the test; d) the respondent did not feel the walk would be safe; or e) the participant attempted the walk but was unable to complete it or was stopped by the interviewer because of safety reasons
replace gaittest = 0 if mmalone==3 | inlist(mmhss,2,3,4) | mmsaf==2  | mmwala==2 | inlist(mmtrya,2,3)

* Save dataset with a new name
save data04.dta

tab mmcomz1
tab mmcomz1 if mmcomz1!=-1
tab mmcomz1 if gaittest == 0
tab mmcomz2
tab mmcomz2 if mmcomz2!=-1
tab mmcomz2 if gaittest == 0
tab mmcomz3
tab mmcomz3 if mmcomz3!=-1
tab mmcomz3 if gaittest == 0
tab mmcomz1 if mmalone==3
tab mmcomz1 if inlist(mmhss,2,3,4)
tab mmcomz1 if mmsaf==2
tab mmcomz1 if mmwala==2
tab mmcomz1 if inlist(mmtrya,2,3)
tab mmpain

* Time-constant balance - Wave 2
* Generate a new variable duplicating the balance variable at Wave 2
gen balance_cons = balance if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward balance_cons, replace

* Time-constant repeated chair stand test - Wave 2
* Generate a new variable duplicating the repeated chair stand test (repcstest) variable at Wave 2
gen repcstest_cons = repcstest if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward repcstest_cons, replace

* Time-constant gait - Wave 2
* Generate a new variable duplicating the gait (gaittest) variable at Wave 2
gen gait_cons = gaittest if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward gait_cons, replace

* Generate a new variable equal to the sum of the points scored on the balance, repeated chair stand, and gait tests to create a total SPPB score (range 0-12)
gen totalSPPB = balance + repcstest + gaittest

* Time-constant total SPPB score - Wave 2
* Generate a new variable duplicating the total SPPB score variable at Wave 2
gen totalSPPB_cons = totalSPPB if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward totalSPPB_cons, replace

* Mobility 
* Baseline (Wave 2)
* 1
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the first listed activity
gen walkingw2 = 1 if heada01==1 | heada02==1 | heada03==1 | heada04==1 | heada05==1 | heada06==1 | heada07==1 | heada08==1 | heada09==1 | heada10==1
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace walkingw2 = 0 if inlist(heada01,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada02,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada03,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada04,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada05,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada06,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada07,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada08,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada09,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1
replace walkingw2 = 0 if inlist(heada10,2,3,4,5,6,7,8,9,10,96) & walkingw2!=1

* 2
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the second listed activity
gen sittingw2 = 1 if heada01==2 | heada02==2 | heada03==2 | heada04==2 | heada05==2 | heada06==2 | heada07==2 | heada08==2 | heada09==2 | heada10==2
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace sittingw2 = 0 if inlist(heada01,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada02,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada03,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada04,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada05,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada06,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada07,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada08,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada09,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1
replace sittingw2 = 0 if inlist(heada10,1,3,4,5,6,7,8,9,10,96) & sittingw2!=1

* 3
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the third listed activity
gen gettingw2 = 1 if heada01==3 | heada02==3 | heada03==3 | heada04==3 | heada05==3 | heada06==3 | heada07==3 | heada08==3 | heada09==3 | heada10==3
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace gettingw2 = 0 if inlist(heada01,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada02,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada03,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada04,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada05,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada06,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada07,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada08,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada09,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1
replace gettingw2 = 0 if inlist(heada10,1,2,4,5,6,7,8,9,10,96) & gettingw2!=1

* 4
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the fourth listed activity
gen climbingcsw2 = 1 if heada01==4 | heada02==4 | heada03==4 | heada04==4 | heada05==4 | heada06==4 | heada07==4 | heada08==4 | heada09==4 | heada10==4
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace climbingcsw2 = 0 if inlist(heada01,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada02,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada03,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada04,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada05,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada06,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada07,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada08,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada09,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1
replace climbingcsw2 = 0 if inlist(heada10,1,2,3,5,6,7,8,9,10,96) & climbingcsw2!=1

* 5
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the fifth listed activity
gen climbingc1w2 = 1 if heada01==5 | heada02==5 | heada03==5 | heada04==5 | heada05==5 | heada06==5 | heada07==5 | heada08==5 | heada09==5 | heada10==5
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace climbingc1w2 = 0 if inlist(heada01,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada02,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada03,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada04,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada05,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada06,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada07,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada08,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada09,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1
replace climbingc1w2 = 0 if inlist(heada10,1,2,3,4,6,7,8,9,10,96) & climbingc1w2!=1

* 6
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the sixth listed activity
gen stoopingw2 = 1 if heada01==6 | heada02==6 | heada03==6 | heada04==6 | heada05==6 | heada06==6 | heada07==6 | heada08==6 | heada09==6 | heada10==6
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace stoopingw2 = 0 if inlist(heada01,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada02,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada03,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada04,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada05,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada06,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada07,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada08,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada09,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1
replace stoopingw2 = 0 if inlist(heada10,1,2,3,4,5,7,8,9,10,96) & stoopingw2!=1

* 7
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the seventh listed activity
gen reachingw2 = 1 if heada01==7 | heada02==7 | heada03==7 | heada04==7 | heada05==7 | heada06==7 | heada07==7 | heada08==7 | heada09==7 | heada10==7
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace reachingw2 = 0 if inlist(heada01,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada02,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada03,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada04,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada05,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada06,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada07,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada08,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada09,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1
replace reachingw2 = 0 if inlist(heada10,1,2,3,4,5,6,8,9,10,96) & reachingw2!=1

* 8
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the eighth listed activity
gen pullingw2 = 1 if heada01==8 | heada02==8 | heada03==8 | heada04==8 | heada05==8 | heada06==8 | heada07==8 | heada08==8 | heada09==8 | heada10==8
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace pullingw2 = 0 if inlist(heada01,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada02,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada03,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada04,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada05,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada06,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada07,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada08,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada09,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1
replace pullingw2 = 0 if inlist(heada10,1,2,3,4,5,6,7,9,10,96) & pullingw2!=1

* 9
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the ninth listed activity
gen liftingw2 = 1 if heada01==9 | heada02==9 | heada03==9 | heada04==9 | heada05==9 | heada06==9 | heada07==9 | heada08==9 | heada09==9 | heada10==9
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace liftingw2 = 0 if inlist(heada01,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada02,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada03,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada04,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada05,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada06,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada07,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada08,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada09,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1
replace liftingw2 = 0 if inlist(heada10,1,2,3,4,5,6,7,8,10,96) & liftingw2!=1

* 10
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the tenth listed activity
gen pickingw2 = 1 if heada01==10 | heada02==10 | heada03==10 | heada04==10 | heada05==10 | heada06==10 | heada07==10 | heada08==10 | heada09==10 | heada10==10
* Assign the number 0 if the participant reported any answer other than the listed activity in heada01-heada10 and data are not missing
replace pickingw2 = 0 if inlist(heada01,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada02,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada03,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada04,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada05,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada06,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada07,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada08,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada09,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1
replace pickingw2 = 0 if inlist(heada10,1,2,3,4,5,6,7,8,9,96) & pickingw2!=1

* Generate a new variable equal to the sum of reported difficulties at Wave 2 (range 0-10)
gen mobilityw2 = walkingw2 + sittingw2 + gettingw2 + climbingcsw2 + climbingc1w2 + stoopingw2 + reachingw2 + pullingw2 + liftingw2 + pickingw2
* Generate a new variable duplicating the Wave 2 mobility variable
gen mobilitybiw2 = mobilityw2
* Dichotomise the variable by assigning the number 1 to any participants who reported at least one difficulty
replace mobilitybiw2 = 1 if inlist(mobilitybiw2,2,3,4,5,6,7,8,9,10)

* Follow-up (Wave 3-9)
* Generate a new variable for each listed activity and replace it with a missing value if data are missing (coded as negative numbers in the ELSA dataset)
gen walking = hemobwa
replace walking = . if walking <0
gen sitting = hemobsi 
replace sitting = . if sitting<0
gen getting = hemobch
replace getting = . if getting<0
gen climbingcs = hemobcs
replace climbingcs = . if climbingcs<0
gen climbingc1 = hemobcl
replace climbingc1 = . if climbingc1<0
gen stooping = hemobst
replace stooping = . if stooping<0
gen reaching = hemobre
replace reaching = . if reaching<0
gen pulling = hemobpu
replace pulling = . if pulling<0
gen lifting = hemobli
replace lifting = . if lifting<0
gen picking = hemobpi
replace picking = . if picking<0
gen nomobility = hemob96
replace nomobility = . if nomobility<0
replace nomobility = 2 if nomobility==0
replace nomobility = 0 if nomobility==1
replace nomobility = 1 if nomobility==2

* Generate a new variable equal to the sum of reported difficulties at Wave 3-9 (range 0-10)
gen mobility = walking + sitting + getting + climbingcs + climbingc1 + stooping + reaching + pulling + lifting + picking
* Generate a new variable duplicating the Wave 3-9 mobility variable
gen mobilitybi = mobility
* Dichotomise the variable by assigning the number 1 to any participants who reported at least one difficulty
replace mobilitybi = 1 if inlist(mobilitybi,2,3,4,5,6,7,8,9,10)

* ADL
* Baseline (Wave 2)
* 1
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the first listed activity
gen ADLdressingw2 = 1 if headb01==1 | headb02==1 | headb03==1 | headb04==1 | headb05==1 | headb06==1 | headb07==1 | headb08==1 | headb09==1 | headb10==1 | headb11==1 | headb12==1 | headb13==1
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace ADLdressingw2 = 0 if inlist(headb01,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb02,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb03,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb04,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb05,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb06,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb07,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb08,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb09,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb10,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb11,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb12,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1
replace ADLdressingw2 = 0 if inlist(headb13,2,3,4,5,6,7,8,9,10,11,12,13,96) & ADLdressingw2!=1

* 2
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the second listed activity
gen ADLwalkingw2 = 1 if headb01==2 | headb02==2 | headb03==2 | headb04==2 | headb05==2 | headb06==2 | headb07==2 | headb08==2 | headb09==2 | headb10==2 | headb11==2 | headb12==2 | headb13==2
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace ADLwalkingw2 = 0 if inlist(headb01,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb02,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb03,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb04,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb05,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb06,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb07,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb08,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb09,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb10,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb11,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb12,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1
replace ADLwalkingw2 = 0 if inlist(headb13,1,3,4,5,6,7,8,9,10,11,12,13,96) & ADLwalkingw2!=1

* 3
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the third listed activity
gen ADLbathingw2 = 1 if headb01==3 | headb02==3 | headb03==3 | headb04==3 | headb05==3 | headb06==3 | headb07==3 | headb08==3 | headb09==3 | headb10==3 | headb11==3 | headb12==3 | headb13==3
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace ADLbathingw2 = 0 if inlist(headb01,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb02,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb03,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb04,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb05,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb06,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb07,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb08,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb09,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb10,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb11,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb12,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1
replace ADLbathingw2 = 0 if inlist(headb13,1,2,4,5,6,7,8,9,10,11,12,13,96) & ADLbathingw2!=1

* 4
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the fourth listed activity
gen ADLeatingw2 = 1 if headb01==4 | headb02==4 | headb03==4 | headb04==4 | headb05==4 | headb06==4 | headb07==4 | headb08==4 | headb09==4 | headb10==4 | headb11==4 | headb12==4 | headb13==4
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace ADLeatingw2 = 0 if inlist(headb01,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb02,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb03,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb04,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb05,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb06,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb07,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb08,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb09,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb10,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb11,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb12,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1
replace ADLeatingw2 = 0 if inlist(headb13,1,2,3,5,6,7,8,9,10,11,12,13,96) & ADLeatingw2!=1

* 5
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the fifth listed activity
gen ADLgettingw2 = 1 if headb01==5 | headb02==5 | headb03==5 | headb04==5 | headb05==5 | headb06==5 | headb07==5 | headb08==5 | headb09==5 | headb10==5 | headb11==5 | headb12==5 | headb13==5
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace ADLgettingw2 = 0 if inlist(headb01,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb02,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb03,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb04,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb05,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb06,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb07,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb08,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb09,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb10,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb11,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb12,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1
replace ADLgettingw2 = 0 if inlist(headb13,1,2,3,4,6,7,8,9,10,11,12,13,96) & ADLgettingw2!=1

* 6
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the sixth listed activity
gen ADLtoiletw2 = 1 if headb01==6 | headb02==6 | headb03==6 | headb04==6 | headb05==6 | headb06==6 | headb07==6 | headb08==6 | headb09==6 | headb10==6 | headb11==6 | headb12==6 | headb13==6
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace ADLtoiletw2 = 0 if inlist(headb01,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb02,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb03,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb04,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb05,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb06,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb07,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb08,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb09,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb10,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb11,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb12,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1
replace ADLtoiletw2 = 0 if inlist(headb13,1,2,3,4,5,7,8,9,10,11,12,13,96) & ADLtoiletw2!=1

* Generate a new variable equal to the sum of reported difficulties at Wave 2 (range 0-6)
gen ADLw2 = ADLdressingw2 + ADLwalkingw2 + ADLbathingw2 + ADLeatingw2 + ADLgettingw2 + ADLtoiletw2
* Generate a new variable duplicating the Wave 2 ADL variable
gen ADLbiw2 = ADLw2
* Dichotomise the variable by assigning the number 1 to any participants who reported at least one difficulty
replace ADLbiw2 = 1 if inlist(ADLbiw2,2,3,4,5,6)

* Follow-up (Wave 3-9)
* Generate a new variable for each listed activity and replace it with a missing value if data are missing (coded as negative numbers in the ELSA dataset)
gen ADLdressing = headldr
replace ADLdressing = . if ADLdressing<0
gen ADLwalking = headlwa
replace ADLwalking = . if ADLwalking<0
gen ADLbathing = headlba
replace ADLbathing = . if ADLbathing<0
gen ADLeating = headlea
replace ADLeating = . if ADLeating<0
gen ADLgetting = headlbe
replace ADLgetting = . if ADLgetting<0
gen ADLtoilet = headlwc
replace ADLtoilet = . if ADLtoilet<0

* Generate a new variable equal to the sum of reported difficulties at Wave 3-9 (range 0-6)
gen ADL = ADLdressing + ADLwalking + ADLbathing + ADLeating + ADLgetting + ADLtoilet
* Generate a new variable duplicating the Wave 3-9 ADL variable
gen ADLbi = ADL
* Dichotomise the variable by assigning the number 1 to any participants who reported at least one difficulty
replace ADLbi = 1 if inlist(ADLbi,2,3,4,5,6)

* Overwrite dataset, by replacing the previously saved file
save data04.dta, replace

* IADL
* Baseline (Wave 2)
* 7
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the seventh listed activity
gen IADLmapw2 = 1 if headb01==7 | headb02==7 | headb03==7 | headb04==7 | headb05==7 | headb06==7 | headb07==7 | headb08==7 | headb09==7 | headb10==7 | headb11==7 | headb12==7 | headb13==7
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLmapw2 = 0 if inlist(headb01,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb02,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb03,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb04,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb05,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb06,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb07,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb08,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb09,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb10,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb11,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb12,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1
replace IADLmapw2 = 0 if inlist(headb13,1,2,3,4,5,6,8,9,10,11,12,13,96) & IADLmapw2!=1

* 8
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the eighth listed activity
gen IADLmealw2 = 1 if headb01==8 | headb02==8 | headb03==8 | headb04==8 | headb05==8 | headb06==8 | headb07==8 | headb08==8 | headb09==8 | headb10==8 | headb11==8 | headb12==8 | headb13==8
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLmealw2 = 0 if inlist(headb01,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb02,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb03,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb04,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb05,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb06,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb07,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb08,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb09,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb10,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb11,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb12,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1
replace IADLmealw2 = 0 if inlist(headb13,1,2,3,4,5,6,7,9,10,11,12,13,96) & IADLmealw2!=1

* 9
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the ninth listed activity
gen IADLshoppingw2 = 1 if headb01==9 | headb02==9 | headb03==9 | headb04==9 | headb05==9 | headb06==9 | headb07==9 | headb08==9 | headb09==9 | headb10==9 | headb11==9 | headb12==9 | headb13==9
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLshoppingw2 = 0 if inlist(headb01,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb02,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb03,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb04,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb05,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb06,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb07,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb08,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb09,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb10,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb11,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb12,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1
replace IADLshoppingw2 = 0 if inlist(headb13,1,2,3,4,5,6,7,8,10,11,12,13,96) & IADLshoppingw2!=1

* 10
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the tenth listed activity
gen IADLphonew2 = 1 if headb01==10 | headb02==10 | headb03==10 | headb04==10 | headb05==10 | headb06==10 | headb07==10 | headb08==10 | headb09==10 | headb10==10 | headb11==10 | headb12==10 | headb13==10
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLphonew2 = 0 if inlist(headb01,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb02,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb03,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb04,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb05,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb06,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb07,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb08,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb09,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb10,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb11,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb12,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1
replace IADLphonew2 = 0 if inlist(headb13,1,2,3,4,5,6,7,8,9,11,12,13,96) & IADLphonew2!=1

* 11
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the eleventh listed activity
gen IADLmediw2 = 1 if headb01==11 | headb02==11 | headb03==11 | headb04==11 | headb05==11 | headb06==11 | headb07==11 | headb08==11 | headb09==11 | headb10==11 | headb11==11 | headb12==11 | headb13==11
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLmediw2 = 0 if inlist(headb01,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb02,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb03,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb04,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb05,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb06,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb07,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb08,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb09,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb10,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb11,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb12,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1
replace IADLmediw2 = 0 if inlist(headb13,1,2,3,4,5,6,7,8,9,10,12,13,96) & IADLmediw2!=1

* 12
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the twelth listed activity
gen IADLworkw2 = 1 if headb01==12 | headb02==12 | headb03==12 | headb04==12 | headb05==12 | headb06==12 | headb07==12 | headb08==12 | headb09==12 | headb10==12 | headb11==12 | headb12==12 | headb13==12
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLworkw2 = 0 if inlist(headb01,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb02,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb03,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb04,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb05,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb06,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb07,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb08,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb09,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb10,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb11,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb12,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1
replace IADLworkw2 = 0 if inlist(headb13,1,2,3,4,5,6,7,8,9,10,11,13,96) & IADLworkw2!=1

* 13
* Generate a new variable and assign the number 1 if the participant reported difficulties performing the thirteenth listed activity
gen IADLmoneyw2 = 1 if headb01==13 | headb02==13 | headb03==13 | headb04==13 | headb05==13 | headb06==13 | headb07==13 | headb08==13 | headb09==13 | headb10==13 | headb11==13 | headb12==13 | headb13==13
* Assign the number 0 if the participant reported any answer other than the listed activity in headb01-headb13 and data are not missing
replace IADLmoneyw2 = 0 if inlist(headb01,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb02,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb03,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb04,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb05,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb06,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb07,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb08,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb09,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb10,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb11,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb12,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1
replace IADLmoneyw2 = 0 if inlist(headb13,1,2,3,4,5,6,7,8,9,10,11,12,96) & IADLmoneyw2!=1

* Generate a new variable equal to the sum of reported difficulties at Wave 2 (range 0-7)
gen IADLw2 = IADLmapw2 + IADLmealw2 + IADLshoppingw2 + IADLphonew2 + IADLmediw2 + IADLworkw2 + IADLmoneyw2
* Generate a new variable duplicating the Wave 2 IADL variable
gen IADLbiw2 = IADLw2
* Dichotomise the variable by assigning the number 1 to any participants who reported at least one difficulty
replace IADLbiw2 = 1 if inlist(IADLbiw2,2,3,4,5,6,7)

* Follow-up (Wave 3-9)
* Generate a new variable for each listed activity and replace it with a missing value if data are missing (coded as negative numbers in the ELSA dataset)
gen IADLmap = headlma
replace IADLmap = . if IADLmap<0
gen IADLmeal = headlpr
replace IADLmeal = . if IADLmeal<0
gen IADLshopping = headlsh
replace IADLshopping = . if IADLshopping<0
gen IADLphone = headlph
replace IADLphone = . if IADLphone<0
gen IADLmedi = headlme
replace IADLmedi = . if IADLmedi<0
gen IADLwork = headlho
replace IADLwork = . if IADLwork<0
gen IADLmoney = headlmo
replace IADLmoney = . if IADLmoney<0
gen noadliadl = headl96
replace noadliadl = . if noadliadl<0
replace noadliadl = 2 if noadliadl==0
replace noadliadl = 0 if noadliadl==1
replace noadliadl = 1 if noadliadl==2
* different to ADLIADLbi as includes headlda and headlsp in some waves

* Generate a new variable equal to the sum of reported difficulties at Wave 3-9 (range 0-7)
gen IADL = IADLmap + IADLmeal + IADLshopping + IADLphone + IADLmedi + IADLwork + IADLmoney
* Generate a new variable duplicating the Wave 3-9 IADL variable
gen IADLbi = IADL
* Dichotomise the variable by assigning the number 1 to any participants who reported at least one difficulty
replace IADLbi = 1 if inlist(IADLbi,2,3,4,5,6,7)

sum idauniq if headldr==0 & headlwa==0 & headlba==0 & headlea==0 & headlbe==0 & headlwc==0 & headlma==0 & headlpr==0 & headlsh==0 & headlph==0 & headlme==0 & headlho==0 & headlmo==0

* Falls
* Generate a new variable duplicating the hefla variable at Wave 2
gen fallsw2 = hefla if wave==2
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace fallsw2 = . if fallsw2<0
* Assign the number 0 if the participant had not fallen down
replace fallsw2 = 0 if fallsw2==2

* Generate a new variable duplicating the hefla variable at Wave 3-9
gen falls = hefla if inlist(wave,3,4,5,6,7,8,9)
* Replace variable as missing for any missing cases (coded as negative numbers in the ELSA dataset)
replace falls = . if falls<0
* Assign the number 0 if the participant had not fallen down
replace falls = 0 if falls==2

* Overwrite dataset, by replacing the previously saved file
save data04.dta, replace

* Time-constant mobility - Wave 2
* Generate a new variable duplicating the mobilityw2 variable at Wave 2
gen mobilityw2_cons = mobilityw2 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward mobilityw2_cons, replace

* Time-constant ADL - Wave 2
* Generate a new variable duplicating the ADLw2 variable at Wave 2
gen ADLw2_cons = ADLw2 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward ADLw2_cons, replace

* Time-constant IADL - Wave 2
* Generate a new variable duplicating the IADLw2 variable at Wave 2
gen IADLw2_cons = IADLw2 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward IADLw2_cons, replace

* Time-constant falls - Wave 2
* Generate a new variable duplicating the falls variable at Wave 2
gen fallsw2_cons = fallsw2 if wave==2
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from Wave 2 to the follow-up waves) by participant ID
bysort idauniq: carryforward fallsw2_cons, replace

* Overwrite dataset, by replacing the previously saved file
save data04.dta, replace

* Drop if participants are aged less than 60 years at baseline
drop if age_cons<60
* Count total number of participants and observations
unique idauniq
* 6,183 individuals, 49,464 observations

* Save dataset with a new name
save data05.dta

* Keep if data are not missing on the total SPPB score
keep if totalSPPB_cons != .
* Count total number of participants and observations
unique idauniq 
* 4,932 individuals, 39,456 observations
* Save dataset with a new name
save datatoimpute.dta
* Keep if data are not missing on demographic covariates
keep if age_cons != . & sex_cons != . & eth_cons != . & marital_cons != . & employment_cons != . & education_cons != . & wealth_cons != .
* Count total number of participants and observations
unique idauniq
* 4,393 individuals, 35,144 observations
* Keep if data are not missing on health-related covariates
keep if activity_cons != .  & bmic_cons != . & oribi_cons != . & wordlist_cons != . & prosbi2_cons != . & fluency_cons != . & nrowclme2_cons != . & efficiency_cons != . & depression_cons != . 
* Count total number of participants and observations
unique idauniq
* 3,983 individuals, 31,864 observations 
* Save dataset with a new name
save exposure.dta
* Keep if mobility data are not missing at baseline
keep if mobilityw2_cons != .
* Count total number of participants and observations 
unique idauniq
* 3,982 individuals, 31,856 observations
* Save dataset with a new name
save exposuremobility.dta
* Use exposure.dta dataset
use exposure.dta
* Keep if ADL and IADL data are not missing at baseline
keep if ADLw2_cons != . & IADLw2_cons != . 
* Count total number of participants and observations 
unique idauniq
* 3,982 individuals, 31,856 observations
* Save dataset with a new name
save exposureADLIADL.dta
* Use exposure.dta dataset
use exposure.dta
* Keep if falls data are not missing at baseline
keep if fallsw2_cons != . 
* Count total number of participants and observations 
unique idauniq
* 3,980 individuals, 31,840 observations
* Save dataset with a new name
save exposurefalls.dta

* Use datatoimpute.dta - contains complete data on the total SPPB score, but missing data on covariates and outcomes
use datatoimpute.dta
* Generate a new variable, standardising the orientation in time variable
egen z2oribi = std(oribi_cons)
* Generate a new variable, standardising the immediate and delayed recall variable
egen z2wordlist = std(wordlist_cons)
* Generate a new variable, standardising the prospective memory variable
egen z2prosbi2 = std(prosbi2_cons)
* Generate a new variable, standardising the verbal fluency variable
egen z2fluency = std(fluency_cons)
* Generate a new variable, standardising the processing speed variable
egen z2nrowclme2 = std(nrowclme2_cons)
* Generate a new variable, standardising the processing efficiency variable
egen z2efficiency = std(efficiency_cons)
* Overwrite dataset, by replacing the previously saved file
save datatoimpute.dta, replace

* Generate a new variable representing the interaction between age and the total SPPB score
gen agesppb = age_cons * totalSPPB_cons
* Generate a new variable representing the interaction between biological sex and the total SPPB score
gen sexsppb = sex_cons * totalSPPB_cons
* Overwrite dataset, by replacing the previously saved file
save datatoimpute.dta, replace

* Drop data from Wave 2 (long format - so the time-constant data from Wave 2 is on the same row as all follow-up waves used in analyses)
drop if wave==2
* Count total number of participants and observations
unique idauniq
* 4,932 individuals, 34,524 observations
* Save dataset with a new name
save datatoimputenew.dta

* Multiple imputation 
* Arrange the multiple datasets in "marginal and long" format
mi set mlong
* Generate summary of missing values (Table S4)
mi misstable summarize totalSPPB_cons balance_cons repcstest_cons gait_cons age_cons sex_cons eth_cons activity_cons marital_cons employment_cons education_cons wealth_cons bmic_cons z2oribi z2wordlist z2prosbi2 z2fluency z2nrowclme2 z2efficiency depression_cons mobility ADL IADL falls mobilityw2_cons ADLw2_cons IADLw2_cons fallsw2_cons health_cons limiting_cons mynssec3_cons living_cons alcohol_cons smoking_cons htvalnew_cons wtvalnew_cons agesppb sexsppb
* Display patterns of missing data
mi misstable patterns totalSPPB_cons balance_cons repcstest_cons gait_cons age_cons sex_cons eth_cons activity_cons marital_cons employment_cons education_cons wealth_cons bmic_cons z2oribi z2wordlist z2prosbi2 z2fluency z2nrowclme2 z2efficiency depression_cons mobility ADL IADL falls mobilityw2_cons ADLw2_cons IADLw2_cons fallsw2_cons health_cons limiting_cons mynssec3_cons living_cons alcohol_cons smoking_cons htvalnew_cons wtvalnew_cons agesppb sexsppb
* Limit the dataset to necessary variables
keep idauniq wave w2xwgt totalSPPB_cons balance_cons repcstest_cons gait_cons age_cons sex_cons eth_cons activity_cons marital_cons employment_cons education_cons wealth_cons bmic_cons z2oribi z2wordlist z2prosbi2 z2fluency z2nrowclme2 z2efficiency depression_cons mobility ADL IADL falls mobilityw2_cons ADLw2_cons IADLw2_cons fallsw2_cons health_cons limiting_cons mynssec3_cons living_cons alcohol_cons smoking_cons htvalnew_cons wtvalnew_cons agesppb sexsppb _mi_miss _mi_m _mi_id
* Generate dummy variables (with prefix miss_ added to each variable name) to be coded 0 if variable is observed and 1 if the variable has a missing value
quietly misstable summarize totalSPPB_cons balance_cons repcstest_cons gait_cons age_cons sex_cons eth_cons activity_cons marital_cons employment_cons education_cons wealth_cons bmic_cons z2oribi z2wordlist z2prosbi2 z2fluency z2nrowclme2 z2efficiency depression_cons mobility ADL IADL falls mobilityw2_cons ADLw2_cons IADLw2_cons fallsw2_cons health_cons limiting_cons mynssec3_cons living_cons alcohol_cons smoking_cons htvalnew_cons wtvalnew_cons agesppb sexsppb, generate(miss_)
* Review changes
describe miss_*

* Logistic (logit), ordinal logistic (ologit), multinomial logistic (mlogit), and linear (regress) regression models to explore whether candidate auxiliary variables predict 1) variables in the analytic models; and 2) missing data on variables in the analytic models
logit eth_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_eth_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
ologit activity_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_activity_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
mlogit marital_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_marital_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit employment_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_employment_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
ologit education_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_education_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
ologit wealth_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_wealth_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress bmic_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_bmic_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress z2oribi i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_z2oribi i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress z2wordlist i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_z2wordlist i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress z2prosbi2 i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_z2prosbi2 i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress z2fluency i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_z2fluency i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress z2nrowclme2 i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_z2nrowclme2 i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress z2efficiency i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_z2efficiency i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress depression_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_depression_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress mobility i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_mobility i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress ADL i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_ADL i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress IADL i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_IADL i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit falls i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_falls i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress mobilityw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_mobilityw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress ADLw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_ADLw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
regress IADLw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_IADLw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit fallsw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons
logit miss_fallsw2_cons i.health_cons i.limiting_cons i.mynssec3_cons i.living_cons i.alcohol_cons i.smoking_cons

* Drop unnecessary variables
drop miss_*
* Reshape data into wide format for observations identified by participant ID and add wave as an identifying time period
mi reshape wide mobility ADL IADL falls, i(idauniq) j(wave)
* Register all variables with missing values that need to be imputed
mi register imputed eth_cons activity_cons marital_cons employment_cons education_cons wealth_cons bmic_cons z2oribi z2wordlist z2prosbi2 z2fluency z2nrowclme2 z2efficiency depression_cons mobility3 mobility4 mobility5 mobility6 mobility7 mobility8 mobility9 ADL3 ADL4 ADL5 ADL6 ADL7 ADL8 ADL9 IADL3 IADL4 IADL5 IADL6 IADL7 IADL8 IADL9 falls3 falls4 falls5 falls6 falls7 falls8 falls9 mobilityw2_cons ADLw2_cons IADLw2_cons fallsw2_cons health_cons limiting_cons mynssec3_cons alcohol_cons smoking_cons htvalnew_cons wtvalnew_cons 
* Register all variables with no missing values and/or which do not require imputation
mi register regular age_cons sex_cons agesppb sexsppb living_cons totalSPPB_cons balance_cons repcstest_cons gait_cons
* Clear panel data settings
mi xtset, clear

* Impute variables 
* Imputation methods:
* logit: logistic
* mlogit: multinomial logistic 
* ologit: ordinal logistic 
* regress: linear
* pmm: predictive mean matching 
* Notes: The variables on the right of the "=" sign have no missing information and are therefore solely considered predictors of missing values. The imputation model is weighted using the cross-sectional sampling weight from Wave 2. The "add(25)" command specifies the number of imputations to be performed; rseed() sets the seed.
mi impute chained (logit) falls3 falls4 falls5 falls6 falls7 falls8 falls9 eth_cons employment_cons limiting_cons fallsw2_cons (mlogit) marital_cons smoking_cons (ologit) activity_cons education_cons wealth_cons health_cons mynssec3_cons alcohol_cons (regress) z2oribi z2wordlist z2prosbi2 z2fluency z2nrowclme2 z2efficiency (pmm, knn(5)) depression_cons mobility3 mobility4 mobility5 mobility6 mobility7 mobility8 mobility9 ADL3 ADL4 ADL5 ADL6 ADL7 ADL8 ADL9 IADL3 IADL4 IADL5 IADL6 IADL7 IADL8 IADL9 mobilityw2_cons ADLw2_cons IADLw2_cons bmic_cons htvalnew_cons wtvalnew_cons = totalSPPB_cons balance_cons repcstest_cons gait_cons sex_cons age_cons living_cons agesppb sexsppb [pweight=w2xwgt], add(25) rseed(54321) noisily
* Save the multiple datasets in wide format
save miwide4932.dta

* Reshape data into long format
mi reshape long mobility ADL IADL falls, i(idauniq) j(wave)
* Save the multiple datasets in long format
save milong4932.dta
* Generate a new variable and passively impute the sum of the individual domain z-scores for cognitive function 
mi passive: gen cognitiveraw = z2oribi + z2wordlist + z2prosbi2 + z2fluency + z2nrowclme2 + z2efficiency
* Generate a new variable and passively impute the global cognitive function z-score 
mi passive: egen zcog_cons = std(cognitiveraw)
* Save dataset with a new name
save milong4932zcog.dta

*******************
***DATA ANALYSIS***
*******************

* MULTIPLE IMPUTATION MODELS
* mixed: Multilevel mixed-effects linear regression command 
* pweight: Incorporates sampling weights at higher levels (i.e., participant level)
* ##: Specifies the main effects for each variable and an interaction
* i.: Denotes a factor variable 
* c.: Denotes a continuous variable
* mi estimate: Runs the analytical model (i.e., multilevel linear regression) within each of the imputed datasets
* Display base levels of factor variables and their interactions in output tables
set showbaselevels on
* Mobility - Total SPPB score (Table S9)
* Model 1
mi estimate: mixed mobility totalSPPB_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed mobility totalSPPB_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed mobility totalSPPB_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed mobility totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed mobility totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed mobility totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 7
mi estimate: mixed mobility c.totalSPPB_cons##c.age_cons c.wave##c.wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 8
mi estimate: mixed mobility c.totalSPPB_cons##i.sex_cons c.wave##c.wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 9
mi estimate: mixed mobility c.totalSPPB_cons##c.wave c.wave#c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 10
mi estimate: mixed mobility c.totalSPPB_cons##c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 11
mi estimate: mixed mobility c.totalSPPB_cons##c.wave##c.wave age_cons c.totalSPPB_cons#i.sex_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Balance (Table S13)
* Model 1
mi estimate: mixed mobility i.balance_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed mobility i.balance_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed mobility i.balance_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed mobility i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed mobility i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed mobility i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Repeated Chair Stand (Table S13)
* Model 1
mi estimate: mixed mobility i.repcstest_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed mobility i.repcstest_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed mobility i.repcstest_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed mobility i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed mobility i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed mobility i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Gait (Table S13)
* Model 1
mi estimate: mixed mobility i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed mobility i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed mobility i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed mobility i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed mobility i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed mobility i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Mutually adjusted (Table S14)
* Model 1
mi estimate: mixed mobility i.balance_cons i.repcstest_cons i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed mobility i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed mobility i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed mobility i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed mobility i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed mobility i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Total SPPB score (Table S9)
* Model 1
mi estimate: mixed ADL totalSPPB_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed ADL totalSPPB_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed ADL totalSPPB_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed ADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed ADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed ADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 7
mi estimate: mixed ADL c.totalSPPB_cons##c.age_cons c.wave##c.wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 8
mi estimate: mixed ADL c.totalSPPB_cons##i.sex_cons c.wave##c.wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 9
mi estimate: mixed ADL c.totalSPPB_cons##c.wave c.wave#c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 10
mi estimate: mixed ADL c.totalSPPB_cons##c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Balance (Table S13)
* Model 1
mi estimate: mixed ADL i.balance_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed ADL i.balance_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed ADL i.balance_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed ADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed ADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed ADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Repeated Chair Stand (Table S13)
* Model 1
mi estimate: mixed ADL i.repcstest_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed ADL i.repcstest_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed ADL i.repcstest_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed ADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed ADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed ADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Gait (Table S13)
* Model 1
mi estimate: mixed ADL i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed ADL i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed ADL i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed ADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed ADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed ADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Mutually adjusted (Table S14)
* Model 1
mi estimate: mixed ADL i.balance_cons i.repcstest_cons i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed ADL i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Total SPPB score (Table S9)
* Model 1
mi estimate: mixed IADL totalSPPB_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed IADL totalSPPB_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed IADL totalSPPB_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed IADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed IADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed IADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 7
mi estimate: mixed IADL c.totalSPPB_cons##c.age_cons c.wave##c.wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 8
mi estimate: mixed IADL c.totalSPPB_cons##i.sex_cons c.wave##c.wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 9
mi estimate: mixed IADL c.totalSPPB_cons##c.wave c.wave#c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 10
mi estimate: mixed IADL c.totalSPPB_cons##c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Balance (Table S13)
* Model 1
mi estimate: mixed IADL i.balance_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed IADL i.balance_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed IADL i.balance_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed IADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed IADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed IADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Repeated Chair Stand (Table S13)
* Model 1
mi estimate: mixed IADL i.repcstest_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed IADL i.repcstest_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed IADL i.repcstest_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed IADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed IADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed IADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Gait (Table S13)
* Model 1
mi estimate: mixed IADL i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed IADL i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed IADL i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed IADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed IADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed IADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Mutually adjusted (Table S14)
* Model 1
mi estimate: mixed IADL i.balance_cons i.repcstest_cons i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mi estimate: mixed IADL i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mi estimate: mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mi estimate: mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mi estimate: mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mi estimate: mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* melogit: Multilevel mixed-effects logistic regression command 
* or: Reports fixed-effects coefficients as odds ratios
* cmdok: Forces the "melogit" command to run on imputed data
* Falls - Total SPPB score (Table S9)
* Model 1
mi estimate, or cmdok: melogit falls totalSPPB_cons || idauniq:, pweight(w2xwgt)
* Model 2
mi estimate, or cmdok: melogit falls totalSPPB_cons wave || idauniq:, pweight(w2xwgt)
* Model 3
mi estimate, or cmdok: melogit falls totalSPPB_cons c.wave##c.wave || idauniq:, pweight(w2xwgt)
* Model 4
mi estimate, or cmdok: melogit falls totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt)
* Model 5
mi estimate, or cmdok: melogit falls totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt)
* Model 6
mi estimate, or cmdok: melogit falls totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)
* Model 7
mi estimate, or cmdok: melogit falls c.totalSPPB_cons##c.age_cons wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)
* Model 8
mi estimate, or cmdok: melogit falls c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)
* Model 9
mi estimate, or cmdok: melogit falls c.totalSPPB_cons##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)
* Model 10
mi estimate, or cmdok: melogit falls c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)

* Falls - Balance (Table S13)
* Model 1
mi estimate, or cmdok: melogit falls i.balance_cons || idauniq:, pweight(w2xwgt)
* Model 2
mi estimate, or cmdok: melogit falls i.balance_cons wave || idauniq:, pweight(w2xwgt)
* Model 3
mi estimate, or cmdok: melogit falls i.balance_cons c.wave##c.wave || idauniq:, pweight(w2xwgt)
* Model 4
mi estimate, or cmdok: melogit falls i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt)
* Model 5
mi estimate, or cmdok: melogit falls i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt)
* Model 6
mi estimate, or cmdok: melogit falls i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)

* Falls - Repeated Chair Stand (Table S13)
* Model 1
mi estimate, or cmdok: melogit falls i.repcstest_cons || idauniq:, pweight(w2xwgt)
* Model 2
mi estimate, or cmdok: melogit falls i.repcstest_cons wave || idauniq:, pweight(w2xwgt)
* Model 3
mi estimate, or cmdok: melogit falls i.repcstest_cons c.wave##c.wave || idauniq:, pweight(w2xwgt)
* Model 4
mi estimate, or cmdok: melogit falls i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt)
* Model 5
mi estimate, or cmdok: melogit falls i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt)
* Model 6
mi estimate, or cmdok: melogit falls i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)

* Falls - Gait (Table S13)
* Model 1
mi estimate, or cmdok: melogit falls i.gait_cons || idauniq:, pweight(w2xwgt)
* Model 2
mi estimate, or cmdok: melogit falls i.gait_cons wave || idauniq:, pweight(w2xwgt)
* Model 3
mi estimate, or cmdok: melogit falls i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt)
* Model 4
mi estimate, or cmdok: melogit falls i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt)
* Model 5
mi estimate, or cmdok: melogit falls i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt)
* Model 6
mi estimate, or cmdok: melogit falls i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)

* Falls - Mutually adjusted (Table S14)
* Model 1
mi estimate, or cmdok: melogit falls i.balance_cons i.repcstest_cons i.gait_cons || idauniq:, pweight(w2xwgt)
* Model 2
mi estimate, or cmdok: melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq:, pweight(w2xwgt)
* Model 3
mi estimate, or cmdok: melogit falls i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt)
* Model 4
mi estimate, or cmdok: melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt)
* Model 5
mi estimate, or cmdok: melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt)
* Model 6
mi estimate, or cmdok: melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt)

* Use the dataset with no missing mobility data at baseline
use exposuremobility.dta
* Keep observations in Wave 3-9 with available mobility data
keep if mobility != .
* Count total number of participants and observations
unique idauniq
* 3,548 individuals, 16,934 observations 
* Save dataset with a new name
save mobilityCC.dta
* Generate a variable that assigns the number 1 to the row representing participants' first observation
bysort idauniq (wave): gen firstnew = 1 if _n==1
* Generate a new variable, duplicating the orientation in time variable at the participant's first observation
gen oribiz = oribi_cons if firstnew==1
* Generate a new variable, duplicating the immediate and delayed recall variable at the participant's first observation
gen wordlistz = wordlist_cons if firstnew==1
* Generate a new variable, duplicating the prospective memory variable at the participant's first observation
gen prosbi2z = prosbi2_cons if firstnew==1
* Generate a new variable, duplicating the verbal fluency variable at the participant's first observation
gen fluencyz = fluency_cons if firstnew==1
* Generate a new variable, duplicating the processing speed variable at the participant's first observation
gen nrowclme2z = nrowclme2_cons if firstnew==1
* Generate a new variable, duplicating the processing efficiency variable at the participant's first observation
gen efficiencyz = efficiency_cons if firstnew==1
* Generate a new variable, standardising the orientation in time variable
egen z2oribi = std(oribiz)
* Generate a new variable, standardising the immediate and delayed recall variable
egen z2wordlist = std(wordlistz)
* Generate a new variable, standardising the prospective memory variable
egen z2prosbi2 = std(prosbi2z)
* Generate a new variable, standardising the verbal fluency variable
egen z2fluency = std(fluencyz)
* Generate a new variable, standardising the processing speed variable
egen z2nrowclme2 = std(nrowclme2z)
* Generate a new variable, standardising the processing efficiency variable
egen z2efficiency = std(efficiencyz)
* Generate a new variable equal to the sum of the individual domain z-scores for cognitive function 
gen cognitiveraw = z2oribi + z2wordlist + z2prosbi2 + z2fluency + z2nrowclme2 + z2efficiency
* Generate a new variable standardising the sum of the individual domain z-scores, to generate a global cognitive function z-score
egen zcog = std(cognitiveraw)

* Time-constant global cognitive function 
* Generate a new variable duplicating the global cognitive function variable at participants' first observation
gen zcog_cons = zcog if firstnew==1
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from participants' first observation to the follow-up waves) by participant ID
bysort idauniq: carryforward zcog_cons, replace
* Save complete case mobility dataset
save mobilityCCzcog.dta

* Display base levels of factor variables and their interactions in output tables
set showbaselevels on
* Mobility - Total SPPB score (Table 2)
* Model 1
mixed mobility totalSPPB_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed mobility totalSPPB_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed mobility totalSPPB_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed mobility totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed mobility totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed mobility totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 7
mixed mobility c.totalSPPB_cons##c.age_cons wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 8
mixed mobility c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 9
mixed mobility c.totalSPPB_cons##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 10
mixed mobility c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 11
mixed mobility c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)
* Simple slopes for the relationship of baseline total SPPB score on mobility impairments at different follow-up waves (Figure 1a)
margins, at(totalSPPB_cons=(0(2)12) wave=(3(1)9)) vsquish vce(unconditional)
marginsplot, noci x(totalSPPB_cons) recast(line) xlabel(0(2)12)
* Marginal effects of biological sex on mobility impairments at representative values of the baseline total SPPB score (Figure S5a)
margins, dydx(sex_cons) at(totalSPPB_cons=(0(2)12)) vsquish vce(unconditional)
marginsplot, yline(0)

* Mobility - Balance (Table 3)
* Model 1
mixed mobility i.balance_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed mobility i.balance_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed mobility i.balance_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed mobility i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed mobility i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed mobility i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Repeated Chair Stand (Table 3)
* Model 1
mixed mobility i.repcstest_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed mobility i.repcstest_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed mobility i.repcstest_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed mobility i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed mobility i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed mobility i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Gait (Table 3)
* Model 1
mixed mobility i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed mobility i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed mobility i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed mobility i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed mobility i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed mobility i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility - Mutually adjusted (Table S10)
* Model 1
mixed mobility i.balance_cons i.repcstest_cons i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed mobility i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed mobility i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed mobility i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed mobility i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed mobility i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons mobilityw2_cons || idauniq: wave, pweight(w2xwgt)

* Mobility binary - Balance (Table S11)
* Model 1
melogit mobilitybi i.balance_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit mobilitybi i.balance_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit mobilitybi i.balance_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit mobilitybi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit mobilitybi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Generate a new variable and assign the number 0 to any participants who reported zero difficulties at Wave 2
gen mobilitybiw2_cons = 0 if mobilityw2_cons==0
* Assign the number 1 to any participants who reported at least one difficulty at Wave 2
replace mobilitybiw2_cons = 1 if inlist(mobilityw2_cons,1,2,3,4,5,6,7,8,9,10)
* Save dataset with a new name
save mobilitybinary.dta
* Model 6
melogit mobilitybi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or

* Mobility binary - Repeated Chair Stand (Table S11)
* Model 1
melogit mobilitybi i.repcstest_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit mobilitybi i.repcstest_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit mobilitybi i.repcstest_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit mobilitybi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit mobilitybi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit mobilitybi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or

* Mobility binary - Gait (Table S11)
* Model 1
melogit mobilitybi i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit mobilitybi i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit mobilitybi i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit mobilitybi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit mobilitybi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit mobilitybi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or

* Mobility binary - Mutually adjusted (Table S12)
* Model 1
melogit mobilitybi i.balance_cons i.repcstest_cons i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit mobilitybi i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit mobilitybi i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit mobilitybi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit mobilitybi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit mobilitybi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or

use mobilitybinary.dta
* Mobility binary - Total SPPB score (Table S8)
* Model 1
melogit mobilitybi totalSPPB_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit mobilitybi totalSPPB_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit mobilitybi totalSPPB_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit mobilitybi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit mobilitybi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit mobilitybi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 7
melogit mobilitybi c.totalSPPB_cons##c.age_cons wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 8
melogit mobilitybi c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 9
melogit mobilitybi c.totalSPPB_cons##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 10
melogit mobilitybi c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.mobilitybiw2_cons || idauniq:, pweight(w2xwgt) or

* Use the dataset with no missing ADL or IADL data at baseline
use exposureADLIADL.dta
* Keep observations in Wave 3-9 with available ADL and IADL data
keep if ADL != .
keep if IADL != .
* Count total number of participants and observations
unique idauniq
* 3,547 individuals, 16,934 observations
* Save dataset with a new name
save ADLIADLCC.dta
* Generate a variable that assigns the number 1 to the row representing participants' first observation
bysort idauniq (wave): gen firstnew = 1 if _n==1
* Generate a new variable, duplicating the orientation in time variable at the participant's first observation
gen oribiz = oribi_cons if firstnew==1
* Generate a new variable, duplicating the immediate and delayed recall variable at the participant's first observation
gen wordlistz = wordlist_cons if firstnew==1
* Generate a new variable, duplicating the prospective memory variable at the participant's first observation
gen prosbi2z = prosbi2_cons if firstnew==1
* Generate a new variable, duplicating the verbal fluency variable at the participant's first observation
gen fluencyz = fluency_cons if firstnew==1
* Generate a new variable, duplicating the processing speed variable at the participant's first observation
gen nrowclme2z = nrowclme2_cons if firstnew==1
* Generate a new variable, duplicating the processing efficiency variable at the participant's first observation
gen efficiencyz = efficiency_cons if firstnew==1
* Generate a new variable, standardising the orientation in time variable
egen z2oribi = std(oribiz)
* Generate a new variable, standardising the immediate and delayed recall variable
egen z2wordlist = std(wordlistz)
* Generate a new variable, standardising the prospective memory variable
egen z2prosbi2 = std(prosbi2z)
* Generate a new variable, standardising the verbal fluency variable
egen z2fluency = std(fluencyz)
* Generate a new variable, standardising the processing speed variable
egen z2nrowclme2 = std(nrowclme2z)
* Generate a new variable, standardising the processing efficiency variable
egen z2efficiency = std(efficiencyz)
* Generate a new variable equal to the sum of the individual domain z-scores for cognitive function 
gen cognitiveraw = z2oribi + z2wordlist + z2prosbi2 + z2fluency + z2nrowclme2 + z2efficiency
* Generate a new variable standardising the sum of the individual domain z-scores, to generate a global cognitive function z-score
egen zcog = std(cognitiveraw)

* Time-constant global cognitive function 
* Generate a new variable duplicating the global cognitive function variable at participants' first observation
gen zcog_cons = zcog if firstnew==1
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from participants' first observation to the follow-up waves) by participant ID
bysort idauniq: carryforward zcog_cons, replace
* Save complete case ADL/IADL dataset
save ADLIADLCCzcog.dta

* ADL - Total SPPB score (Table 2)
* Model 1
mixed ADL totalSPPB_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed ADL totalSPPB_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed ADL totalSPPB_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed ADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed ADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed ADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 7
mixed ADL c.totalSPPB_cons##c.age_cons c.wave##c.wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 8
mixed ADL c.totalSPPB_cons##i.sex_cons c.wave##c.wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 9
mixed ADL c.totalSPPB_cons##c.wave c.wave#c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Simple slopes for the relationship of baseline total SPPB score on ADL disabilities at different follow-up waves (Figure 1b)
margins, at(totalSPPB_cons=(0 12) wave=(3(1)9)) vsquish vce(unconditional)
marginsplot, noci x(totalSPPB_cons) recast(line) xlabel(0(2)12)
* Model 10
mixed ADL c.totalSPPB_cons##c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Balance (Table 3)
* Model 1
mixed ADL i.balance_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed ADL i.balance_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed ADL i.balance_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed ADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed ADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed ADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Repeated Chair Stand (Table 3)
* Model 1
mixed ADL i.repcstest_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed ADL i.repcstest_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed ADL i.repcstest_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed ADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed ADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed ADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Gait (Table 3)
* Model 1
mixed ADL i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed ADL i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed ADL i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed ADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed ADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed ADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL - Mutually adjusted (Table S10)
* Model 1
mixed ADL i.balance_cons i.repcstest_cons i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed ADL i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed ADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons ADLw2_cons || idauniq: wave, pweight(w2xwgt)

* ADL binary - Balance (Table S11)
* Model 1
melogit ADLbi i.balance_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit ADLbi i.balance_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit ADLbi i.balance_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit ADLbi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit ADLbi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Generate a new variable and assign the number 0 to any participants who reported zero difficulties at Wave 2
gen ADLbiw2_cons = 0 if ADLw2_cons==0
* Assign the number 1 to any participants who reported at least one difficulty at Wave 2
replace ADLbiw2_cons = 1 if inlist(ADLw2_cons,1,2,3,4,5,6)
* Model 6
melogit ADLbi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* ADL binary - Repeated Chair Stand (Table S11)
* Model 1
melogit ADLbi i.repcstest_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit ADLbi i.repcstest_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit ADLbi i.repcstest_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit ADLbi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit ADLbi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit ADLbi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* ADL binary - Gait (Table S11)
* Model 1
melogit ADLbi i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit ADLbi i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit ADLbi i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit ADLbi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit ADLbi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit ADLbi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* ADL binary - Mutually adjusted (Table S12)
* Model 1
melogit ADLbi i.balance_cons i.repcstest_cons i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit ADLbi i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit ADLbi i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit ADLbi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit ADLbi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit ADLbi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* IADL - Total SPPB score (Table 2)
* Model 1
mixed IADL totalSPPB_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed IADL totalSPPB_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed IADL totalSPPB_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed IADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed IADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed IADL totalSPPB_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 7
mixed IADL c.totalSPPB_cons##c.age_cons c.wave##c.wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 8
mixed IADL c.totalSPPB_cons##i.sex_cons c.wave##c.wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 9
mixed IADL c.totalSPPB_cons##c.wave c.wave#c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 10
mixed IADL c.totalSPPB_cons##c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Model 11
mixed IADL c.totalSPPB_cons#c.wave c.wave##c.wave c.totalSPPB_cons##c.age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)
* Simple slopes for the relationship of baseline total SPPB score on mobility impairments at different follow-up waves (Figure 1c)
margins, at(totalSPPB_cons=(0 12) wave=(3(1)9)) vsquish vce(unconditional)
marginsplot, noci x(totalSPPB_cons) recast(line) xlabel(0(2)12)
* Simple slopes for the relationship of baseline total SPPB score on IADL disabilities at different age values (Figure S5c)
margins, at(totalSPPB_cons=(0 12) age=(60(5)90)) vsquish vce(unconditional)
marginsplot, noci x(totalSPPB_cons) recast(line) xlabel(0(2)12)

* IADL - Balance (Table 3)
* Model 1
mixed IADL i.balance_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed IADL i.balance_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed IADL i.balance_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed IADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed IADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed IADL i.balance_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Repeated Chair Stand (Table 3)
* Model 1
mixed IADL i.repcstest_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed IADL i.repcstest_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed IADL i.repcstest_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed IADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed IADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed IADL i.repcstest_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Gait (Table 3)
* Model 1
mixed IADL i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed IADL i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed IADL i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed IADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed IADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed IADL i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL - Mutually adjusted (Table S10)
* Model 1
mixed IADL i.balance_cons i.repcstest_cons i.gait_cons || idauniq: wave, pweight(w2xwgt)
* Model 2
mixed IADL i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq: wave, pweight(w2xwgt)
* Model 3
mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq: wave, pweight(w2xwgt)
* Model 4
mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq: wave, pweight(w2xwgt)
* Model 5
mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq: wave, pweight(w2xwgt)
* Model 6
mixed IADL i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons IADLw2_cons || idauniq: wave, pweight(w2xwgt)

* IADL binary - Balance (Table S11)
* Model 1
melogit IADLbi i.balance_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit IADLbi i.balance_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit IADLbi i.balance_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit IADLbi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit IADLbi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Generate a new variable and assign the number 0 to any participants who reported zero difficulties at Wave 2
gen IADLbiw2_cons = 0 if IADLw2_cons==0
* Assign the number 1 to any participants who reported at least one difficulty at Wave 2
replace IADLbiw2_cons = 1 if inlist(IADLw2_cons,1,2,3,4,5,6,7)
* Save dataset with a new name
save ADLIADLbinary.dta
* Model 6
melogit IADLbi i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* IADL binary - Repeated Chair Stand (Table S11)
* Model 1
melogit IADLbi i.repcstest_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit IADLbi i.repcstest_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit IADLbi i.repcstest_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit IADLbi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit IADLbi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit IADLbi i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* IADL binary - Gait (Table S11)
* Model 1
melogit IADLbi i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit IADLbi i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit IADLbi i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit IADLbi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit IADLbi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit IADLbi i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* IADL binary - Mutually adjusted (Table S12)
* Model 1
melogit IADLbi i.balance_cons i.repcstest_cons i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit IADLbi i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit IADLbi i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit IADLbi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit IADLbi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit IADLbi i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or

use ADLIADLbinary.dta
* ADL binary - Total SPPB score (Table S8)
* Model 1
melogit ADLbi totalSPPB_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit ADLbi totalSPPB_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit ADLbi totalSPPB_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit ADLbi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit ADLbi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit ADLbi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 7
melogit ADLbi c.totalSPPB_cons##c.age_cons wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 8
melogit ADLbi c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 9
melogit ADLbi c.totalSPPB_cons##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 10
melogit ADLbi c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 11
melogit ADLbi c.totalSPPB_cons##c.wave c.totalSPPB_cons#c.age_cons age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.ADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* IADL binary - Total SPPB score (Table S8)
* Model 1
melogit IADLbi totalSPPB_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit IADLbi totalSPPB_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit IADLbi totalSPPB_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit IADLbi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit IADLbi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit IADLbi totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 7
melogit IADLbi c.totalSPPB_cons##c.age_cons wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 8
melogit IADLbi c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 9
melogit IADLbi c.totalSPPB_cons##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or
* Model 10
melogit IADLbi c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.IADLbiw2_cons || idauniq:, pweight(w2xwgt) or

* Use the dataset with no missing falls data at baseline
use exposurefalls.dta
* Keep observations in Wave 3-9 with available falls data
keep if falls != .
* Count total number of participants and observations
unique idauniq
* 3,505 individuals, 16,332 observations
* Save dataset with a new name
save fallsCC.dta
* Generate a variable that assigns the number 1 to the row representing participants' first observation
bysort idauniq (wave): gen firstnew = 1 if _n==1
* Generate a new variable, duplicating the orientation in time variable at the participant's first observation
gen oribiz = oribi_cons if firstnew==1
* Generate a new variable, duplicating the immediate and delayed recall variable at the participant's first observation
gen wordlistz = wordlist_cons if firstnew==1
* Generate a new variable, duplicating the prospective memory variable at the participant's first observation
gen prosbi2z = prosbi2_cons if firstnew==1
* Generate a new variable, duplicating the verbal fluency variable at the participant's first observation
gen fluencyz = fluency_cons if firstnew==1
* Generate a new variable, duplicating the processing speed variable at the participant's first observation
gen nrowclme2z = nrowclme2_cons if firstnew==1
* Generate a new variable, duplicating the processing efficiency variable at the participant's first observation
gen efficiencyz = efficiency_cons if firstnew==1
* Generate a new variable, standardising the orientation in time variable
egen z2oribi = std(oribiz)
* Generate a new variable, standardising the immediate and delayed recall variable
egen z2wordlist = std(wordlistz)
* Generate a new variable, standardising the prospective memory variable
egen z2prosbi2 = std(prosbi2z)
* Generate a new variable, standardising the verbal fluency variable
egen z2fluency = std(fluencyz)
* Generate a new variable, standardising the processing speed variable
egen z2nrowclme2 = std(nrowclme2z)
* Generate a new variable, standardising the processing efficiency variable
egen z2efficiency = std(efficiencyz)
* Generate a new variable equal to the sum of the individual domain z-scores for cognitive function 
gen cognitiveraw = z2oribi + z2wordlist + z2prosbi2 + z2fluency + z2nrowclme2 + z2efficiency
* Generate a new variable standardising the sum of the individual domain z-scores, to generate a global cognitive function z-score
egen zcog = std(cognitiveraw)

* Time-constant global cognitive function 
* Generate a new variable duplicating the global cognitive function variable at participants' first observation
gen zcog_cons = zcog if firstnew==1
* Declare a panel dataset with participant ID "idauniq" and time variable "wave"
tsset idauniq wave
* Carryforward observations with respect to the time variable "wave" (i.e., from participants' first observation to the follow-up waves) by participant ID
bysort idauniq: carryforward zcog_cons, replace
* Save complete case falls dataset
save fallsCCzcog.dta

* Falls - Total SPPB score (Table 2)
* Model 1
melogit falls totalSPPB_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit falls totalSPPB_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit falls totalSPPB_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit falls totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit falls totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit falls totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or
* Model 7
melogit falls c.totalSPPB_cons##c.age_cons wave i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or
* Model 8
melogit falls c.totalSPPB_cons##i.sex_cons wave age_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or
* Marginal effects of biological sex on falls at representative values of the baseline total SPPB score (Figure S5b)
margins, dydx(sex_cons) at(totalSPPB_cons=(0(2)12)) predict(mu fixedonly) vsquish vce(unconditional)
marginsplot, yline(0)
* Model 9
melogit falls c.totalSPPB_cons##c.wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or
* Model 10
melogit falls c.totalSPPB_cons#c.wave#c.wave c.totalSPPB_cons#c.wave totalSPPB_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or

* Falls - Balance (Table 3)
* Model 1
melogit falls i.balance_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit falls i.balance_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit falls i.balance_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit falls i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit falls i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit falls i.balance_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or

* Falls - Repeated Chair Stand (Table 3)
* Model 1
melogit falls i.repcstest_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit falls i.repcstest_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit falls i.repcstest_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit falls i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit falls i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit falls i.repcstest_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or

* Falls - Gait (Table 3)
* Model 1
melogit falls i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit falls i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit falls i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit falls i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit falls i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit falls i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || 

* Falls - Mutually adjusted (Table S10)
* Model 1
melogit falls i.balance_cons i.repcstest_cons i.gait_cons || idauniq:, pweight(w2xwgt) or
* Model 2
melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave || idauniq:, pweight(w2xwgt) or
* Model 3
melogit falls i.balance_cons i.repcstest_cons i.gait_cons c.wave##c.wave || idauniq:, pweight(w2xwgt) or
* Model 4
melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons || idauniq:, pweight(w2xwgt) or
* Model 5
melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons || idauniq:, pweight(w2xwgt) or
* Model 6
melogit falls i.balance_cons i.repcstest_cons i.gait_cons wave age_cons i.sex_cons i.eth_cons i.marital_cons i.employment_cons i.education_cons i.wealth_cons i.activity_cons bmic_cons zcog_cons depression_cons i.fallsw2_cons || idauniq:, pweight(w2xwgt) or

use data05.dta
* SPPB
* Balance
tab mmbcsc
tab mmsssc
tab mmssre
tab mmsssc if mmssre==3
sum mmssti if mmssti!=-1
tab mmssre if mmssti!=-1
sum mmssna if mmssna!=-1
tab mmssna if mmssna!=-1
tab mmsssc if mmssna!=-1

tab mmstsc
tab mmstsc if mmssna!=-1
tab mmssre if mmstsc==-1
tab mmstre
tab mmstsc if mmstre==3
sum mmstti if mmstti!=-1
tab mmstre if mmstti!=-1
sum mmstna if mmstna!=-1
tab mmstna if mmstna!=-1
tab mmstsc if mmstna!=-1

tab mmftsc
tab mmftsc if mmssna!=-1 | mmssti!=-1
tab mmftsc if mmstti!=-1
tab mmftsc if mmstna!=-1
tab mmftre2
tab mmftsc if mmftre2==5
sum mmftti if mmftti!=-1
sum mmftti if inlist(mmftre2,2,4)
tab mmftre2 if mmftti!=-1
tab mmftre2 if inlist(mmftre2,2,4)
sum mmftti if mmftti >=3 & mmftti < 10
sum mmftti if mmftti >=3 & mmftti < 10 & mmftre2==2
sum mmftti if mmftti >=3 & mmftti < 10 & mmftre2==4
sum mmftti if mmftti < 3 & mmftti!=-1
sum mmftti if mmftti < 3 & mmftti!=-1 & mmftre2==2
sum mmftti if mmftti < 3 & mmftti!=-1 & mmftre2==4
tab mmftre2 if mmftti >=10 & mmftti!=.
sum mmftti if mmftti >=10 & mmftti!=.
sum mmftna if mmftna!=-1
tab mmftna if mmftna!=-1
tab mmftsc if mmftna!=-1

tab sidebyside
tab semitandem
tab tandem
tab balance
tab balance2

* Repeated Chair Stand Test
tab mmcrav
tab mmcrsc
tab mmcrre
tab mmcrre if mmcrav==2 | inlist(mmcrsc,-8,2)
sum mmcrna if mmcrna!=-1
tab mmcrna if mmcrna!=-1
tab mmrrsc
tab mmcrre if mmrrsc==-1
tab mmrrre
tab mmrrsc if mmrrre==-1
tab mmrrre if inlist(mmrrsc,2,-1)
tab mmrrfti if mmrrfti<0
sum mmrrfti if mmrrre>=5
sum mmrrfti if mmrrfti>=0
tab mmrrfti if mmrrfti>=0 & mmrrfti<4
sum mmrrfti if mmrrfti<=11.19 & mmrrfti>=0
sum mmrrfti if mmrrfti<=11.19 & mmrrfti>1
sum mmrrfti if mmrrfti>=16.7 & mmrrfti<=60
sum mmrrfti if mmrrfti>=13.7 & mmrrfti<16.7
sum mmrrfti if mmrrfti>=11.2 & mmrrfti<13.7
sum mmrrfti if mmrrfti > 60

tab mmrrre if inlist(mmrroc,1,3)
tab mmrrre if mmrroc==2
tab mmrrre if mmrroc==4
tab mmrrre if inlist(mmrroc,1,2,3,4)

sum mmrrna if mmrrna!=-1
tab mmrrna if mmrrna!=-1
tab mmrrre if mmrrna!=-1 & inlist(mmrroc,3,4)
tab mmrrre if mmrrna!=-1 & inlist(mmrroc,1,2)
tab mmrrsc if mmrrna!=-1

tab repcstest

* Gait
tab mmschs
tab mmalone
tab mmschs if mmalone==-1 
tab mmschs if mmalone==-9
tab mmschs if mmalone==-8
tab mmschs if mmalone==1 
tab mmschs if mmalone==2 
tab mmschs if mmalone==3
tab mmhss
tab mmalone if mmhss==-1
tab mmalone if mmhss==-9
tab mmalone if mmhss==-8
tab mmalone if mmhss==1
tab mmalone if mmhss==2
tab mmalone if mmhss==3
tab mmalone if mmhss==4
tab mmwill
tab mmhss if mmwill==-9
tab mmhss if mmwill==1
tab mmhss if mmwill==2
tab mmsaf
tab mmwill if mmsaf==1
tab mmwill if mmsaf==2
tab mmavsp
tab mmsaf if mmavsp==-9
tab mmsaf if mmavsp==-8
tab mmsaf if mmavsp==1
tab mmsaf if mmavsp==2
tab mmwala
tab mmavsp if inlist(mmwala,1,2)

tab mmtrya
tab mmwala if inlist(mmtrya,-9,1,2,3)
tab mmwlka if mmwlka<0
sum mmwlka if mmwlka>=0
tab mmtrya if mmwlka!=-1 & mmwlka!=.

tab mmtryb
tab mmtrya if inlist(mmtryb,-9,-8,1,2,3,4)
tab mmwlka if inlist(mmtryb,-9,-8)
tab mmwlkb if mmwlkb<0
sum mmwlkb if mmwlkb>=0
tab mmtryb if mmwlkb!=-1 & mmwlkb!=.

tab mmwlka if mmwlka>=0 & mmwlka<2
tab mmwlkb if mmwlkb>=0 & mmwlkb<2

sum idauniq if ((mmwlka>=0 & mmwlka!=.) | (mmwlkb>=0 & mmwlkb!=.))
sum idauniq if mmwlka>=0 & mmwlkb>=0 & mmwlka!=. & mmwlkb!=.

sum idauniq if mmwlka<0
keep if mmwlka<0
tab mmschs
tab mmalone
tab mmschs if mmalone==-1
tab mmschs if mmalone==3
tab mmschs if mmalone==-9
tab mmschs if mmalone==-8
tab mmhss
tab mmalone if mmhss==-1
tab mmwill
tab mmhss if mmwill==-1
tab mmhss if mmwill!=-1
tab mmsaf
tab mmwill if mmsaf==-1
tab mmwill if mmsaf!=-1
tab mmavsp
tab mmsaf if mmavsp==-1
tab mmsaf if mmavsp!=-1
tab mmwala
tab mmavsp if mmwala==-1
tab mmavsp if mmwala!=-1
tab mmtrya
tab mmwala if mmtrya==-1
tab mmwala if mmtrya!=-1
tab mmwlka
tab mmtrya if mmwlka==-1
tab mmtrya if mmwlka!=-1

clear
use data05.dta
tab gaittest

tab mmcomz1
tab mmcomz1 if mmcomz1!=-1
tab mmcomz1 if gaittest == 0
tab mmcomz2
tab mmcomz2 if mmcomz2!=-1
tab mmcomz2 if gaittest == 0
tab mmcomz3
tab mmcomz3 if mmcomz3!=-1
tab mmcomz3 if gaittest == 0
tab mmcomz1 if mmalone==3
tab mmcomz1 if inlist(mmhss,2,3,4)
tab mmcomz1 if mmsaf==2
tab mmcomz1 if mmwala==2
tab mmcomz1 if inlist(mmtrya,2,3)
tab mmpain

* Use full dataset
use data05.dta
* Count total number of participants and observations
unique idauniq
* 6,183 individuals, 49,464 observations
* Arrange the multiple datasets in "marginal and long" format
mi set mlong
* Keep necessary variables
keep idauniq wave w2xwgt totalSPPB_cons balance_cons repcstest_cons gait_cons age_cons sex_cons eth_cons activity_cons marital_cons dimar employment_cons wpdes education_cons w2edqual wealth_cons bmic_cons oribi_cons wordlist_cons prosbi2_cons fluency_cons nrowclme2_cons efficiency_cons depression_cons mobility ADL IADL falls mobilityw2_cons ADLw2_cons IADLw2_cons fallsw2_cons health_cons limiting_cons mynssec3_cons living_cons alcohol_cons smoking_cons htvalnew_cons wtvalnew_cons _mi_miss _mi_m _mi_id
* Reshape data into wide format for observations identified by participant ID and add "wave" as an identifying time period
mi reshape wide dimar wpdes w2edqual mobility ADL IADL falls, i(idauniq) j(wave)
* Save dataset with a new name
save descwide.dta

* Weighted (using the cross-sectional sampling weight from Wave 2) descriptive statistics (Table 1); comparison of the unweighted baseline characteristics of the complete-case samples used for analyses versus the samples excluded due to missing data, using independent t-tests and Pearson's chi-squared tests (Table S7)
* aw: analytic weights
gen missing_mob = .
replace missing_mob = 0 if totalSPPB_cons != . & age_cons != . & sex_cons != . & eth_cons != . & marital_cons != . & employment_cons != . & education_cons != . & wealth_cons != . & activity_cons != .  & bmic_cons != . & oribi_cons != . & wordlist_cons != . & prosbi2_cons != . & fluency_cons != . & nrowclme2_cons != . & efficiency_cons != . & depression_cons != . & mobilityw2_cons != . & (mobility3 != . | mobility4 != . | mobility5 != . | mobility6 != . | mobility7 != . | mobility8 != . | mobility9 != .)
replace missing_mob = 1 if missing_mob != 0

tab totalSPPB_cons [aw=w2xwgt] if missing_mob==0
sum totalSPPB_cons [aw=w2xwgt] if missing_mob==0
tab balance_cons [aw=w2xwgt] if missing_mob==0
tab repcstest_cons [aw=w2xwgt] if missing_mob==0
tab gait_cons [aw=w2xwgt] if missing_mob==0
sum age_cons [aw=w2xwgt] if missing_mob==0
tab sex_cons [aw=w2xwgt] if missing_mob==0
tab eth_cons [aw=w2xwgt] if missing_mob==0
tab activity_cons [aw=w2xwgt] if missing_mob==0
tab marital_cons [aw=w2xwgt] if missing_mob==0
tab dimar2 [aw=w2xwgt] if missing_mob==0
tab employment_cons [aw=w2xwgt] if missing_mob==0
tab wpdes2 [aw=w2xwgt] if missing_mob==0
tab education_cons [aw=w2xwgt] if missing_mob==0
tab w2edqual2 [aw=w2xwgt] if missing_mob==0
tab wealth_cons [aw=w2xwgt] if missing_mob==0
sum bmic_cons [aw=w2xwgt] if missing_mob==0
tab oribi_cons [aw=w2xwgt] if missing_mob==0
sum wordlist_cons [aw=w2xwgt] if missing_mob==0
tab prosbi2_cons [aw=w2xwgt] if missing_mob==0
sum fluency_cons [aw=w2xwgt] if missing_mob==0
sum nrowclme2_cons [aw=w2xwgt] if missing_mob==0
sum efficiency_cons [aw=w2xwgt] if missing_mob==0
tab depression_cons [aw=w2xwgt] if missing_mob==0
sum depression_cons [aw=w2xwgt] if missing_mob==0
tab mobilityw2_cons [aw=w2xwgt] if missing_mob==0
sum mobilityw2_cons [aw=w2xwgt] if missing_mob==0

tab totalSPPB_cons [aw=w2xwgt] if missing_mob==1
sum totalSPPB_cons [aw=w2xwgt] if missing_mob==1
tab balance_cons [aw=w2xwgt] if missing_mob==1
tab repcstest_cons [aw=w2xwgt] if missing_mob==1
tab gait_cons [aw=w2xwgt] if missing_mob==1
sum age_cons [aw=w2xwgt] if missing_mob==1
tab sex_cons [aw=w2xwgt] if missing_mob==1
tab eth_cons [aw=w2xwgt] if missing_mob==1
tab activity_cons [aw=w2xwgt] if missing_mob==1
tab marital_cons [aw=w2xwgt] if missing_mob==1
tab dimar2 [aw=w2xwgt] if missing_mob==1
tab employment_cons [aw=w2xwgt] if missing_mob==1
tab wpdes2 [aw=w2xwgt] if missing_mob==1
tab education_cons [aw=w2xwgt] if missing_mob==1
tab w2edqual2 [aw=w2xwgt] if missing_mob==1
tab wealth_cons [aw=w2xwgt] if missing_mob==1
sum bmic_cons [aw=w2xwgt] if missing_mob==1
tab oribi_cons [aw=w2xwgt] if missing_mob==1
sum wordlist_cons [aw=w2xwgt] if missing_mob==1
tab prosbi2_cons [aw=w2xwgt] if missing_mob==1
sum fluency_cons [aw=w2xwgt] if missing_mob==1
sum nrowclme2_cons [aw=w2xwgt] if missing_mob==1
sum efficiency_cons [aw=w2xwgt] if missing_mob==1
tab depression_cons [aw=w2xwgt] if missing_mob==1
sum depression_cons [aw=w2xwgt] if missing_mob==1
tab mobilityw2_cons [aw=w2xwgt] if missing_mob==1
sum mobilityw2_cons [aw=w2xwgt] if missing_mob==1

tab totalSPPB_cons if missing_mob==0
sum totalSPPB_cons if missing_mob==0
tab balance_cons if missing_mob==0
tab repcstest_cons if missing_mob==0
tab gait_cons if missing_mob==0
sum age_cons if missing_mob==0
tab sex_cons if missing_mob==0
tab eth_cons if missing_mob==0
tab activity_cons if missing_mob==0
tab marital_cons if missing_mob==0
tab dimar2 if missing_mob==0
tab employment_cons if missing_mob==0
tab wpdes2 if missing_mob==0
tab education_cons if missing_mob==0
tab w2edqual2 if missing_mob==0
tab wealth_cons if missing_mob==0
sum bmic_cons if missing_mob==0
tab oribi_cons if missing_mob==0
sum wordlist_cons if missing_mob==0
tab prosbi2_cons if missing_mob==0
sum fluency_cons if missing_mob==0
sum nrowclme2_cons if missing_mob==0
sum efficiency_cons if missing_mob==0
tab depression_cons if missing_mob==0
sum depression_cons if missing_mob==0
tab mobilityw2_cons if missing_mob==0
sum mobilityw2_cons if missing_mob==0

tab totalSPPB_cons if missing_mob==1
sum totalSPPB_cons if missing_mob==1
tab balance_cons if missing_mob==1
tab repcstest_cons if missing_mob==1
tab gait_cons if missing_mob==1
sum age_cons if missing_mob==1
tab sex_cons if missing_mob==1
tab eth_cons if missing_mob==1
tab activity_cons if missing_mob==1
tab marital_cons if missing_mob==1
tab dimar2 if missing_mob==1
tab employment_cons if missing_mob==1
tab wpdes2 if missing_mob==1
tab education_cons if missing_mob==1
tab w2edqual2 if missing_mob==1
tab wealth_cons if missing_mob==1
sum bmic_cons if missing_mob==1
tab oribi_cons if missing_mob==1
sum wordlist_cons if missing_mob==1
tab prosbi2_cons if missing_mob==1
sum fluency_cons if missing_mob==1
sum nrowclme2_cons if missing_mob==1
sum efficiency_cons if missing_mob==1
tab depression_cons if missing_mob==1
sum depression_cons if missing_mob==1
tab mobilityw2_cons if missing_mob==1
sum mobilityw2_cons if missing_mob==1

gen missing_adliadl = .
replace missing_adliadl = 0 if totalSPPB_cons != . & age_cons != . & sex_cons != . & eth_cons != . & marital_cons != . & employment_cons != . & education_cons != . & wealth_cons != . & activity_cons != .  & bmic_cons != . & oribi_cons != . & wordlist_cons != . & prosbi2_cons != . & fluency_cons != . & nrowclme2_cons != . & efficiency_cons != . & depression_cons != . & ADLw2_cons != . & IADLw2_cons != . & (ADL3 != . | ADL4 != . | ADL5 != . | ADL6 != . | ADL7 != . | ADL8 != . | ADL9 != . | IADL3 != . | IADL4 != . | IADL5 != . | IADL6 != . | IADL7 != . | IADL8 != . | IADL9 != .)
replace missing_adliadl = 1 if missing_adliadl != 0

tab totalSPPB_cons [aw=w2xwgt] if missing_adliadl==0
sum totalSPPB_cons [aw=w2xwgt] if missing_adliadl==0
tab balance_cons [aw=w2xwgt] if missing_adliadl==0
tab repcstest_cons [aw=w2xwgt] if missing_adliadl==0
tab gait_cons [aw=w2xwgt] if missing_adliadl==0
sum age_cons [aw=w2xwgt] if missing_adliadl==0
tab sex_cons [aw=w2xwgt] if missing_adliadl==0
tab eth_cons [aw=w2xwgt] if missing_adliadl==0
tab activity_cons [aw=w2xwgt] if missing_adliadl==0
tab marital_cons [aw=w2xwgt] if missing_adliadl==0
tab dimar2 [aw=w2xwgt] if missing_adliadl==0
tab employment_cons [aw=w2xwgt] if missing_adliadl==0
tab wpdes2 [aw=w2xwgt] if missing_adliadl==0
tab education_cons [aw=w2xwgt] if missing_adliadl==0
tab w2edqual2 [aw=w2xwgt] if missing_adliadl==0
tab wealth_cons [aw=w2xwgt] if missing_adliadl==0
sum bmic_cons [aw=w2xwgt] if missing_adliadl==0
tab oribi_cons [aw=w2xwgt] if missing_adliadl==0
sum wordlist_cons [aw=w2xwgt] if missing_adliadl==0
tab prosbi2_cons [aw=w2xwgt] if missing_adliadl==0
sum fluency_cons [aw=w2xwgt] if missing_adliadl==0
sum nrowclme2_cons [aw=w2xwgt] if missing_adliadl==0
sum efficiency_cons [aw=w2xwgt] if missing_adliadl==0
tab depression_cons [aw=w2xwgt] if missing_adliadl==0
sum depression_cons [aw=w2xwgt] if missing_adliadl==0
tab ADLw2_cons [aw=w2xwgt] if missing_adliadl==0
sum ADLw2_cons [aw=w2xwgt] if missing_adliadl==0
tab IADLw2_cons [aw=w2xwgt] if missing_adliadl==0
sum IADLw2_cons [aw=w2xwgt] if missing_adliadl==0

tab totalSPPB_cons [aw=w2xwgt] if missing_adliadl==1
sum totalSPPB_cons [aw=w2xwgt] if missing_adliadl==1
tab balance_cons [aw=w2xwgt] if missing_adliadl==1
tab repcstest_cons [aw=w2xwgt] if missing_adliadl==1
tab gait_cons [aw=w2xwgt] if missing_adliadl==1
sum age_cons [aw=w2xwgt] if missing_adliadl==1
tab sex_cons [aw=w2xwgt] if missing_adliadl==1
tab eth_cons [aw=w2xwgt] if missing_adliadl==1
tab activity_cons [aw=w2xwgt] if missing_adliadl==1
tab marital_cons [aw=w2xwgt] if missing_adliadl==1
tab dimar2 [aw=w2xwgt] if missing_adliadl==1
tab employment_cons [aw=w2xwgt] if missing_adliadl==1
tab wpdes2 [aw=w2xwgt] if missing_adliadl==1
tab education_cons [aw=w2xwgt] if missing_adliadl==1
tab w2edqual2 [aw=w2xwgt] if missing_adliadl==1
tab wealth_cons [aw=w2xwgt] if missing_adliadl==1
sum bmic_cons [aw=w2xwgt] if missing_adliadl==1
tab oribi_cons [aw=w2xwgt] if missing_adliadl==1
sum wordlist_cons [aw=w2xwgt] if missing_adliadl==1
tab prosbi2_cons [aw=w2xwgt] if missing_adliadl==1
sum fluency_cons [aw=w2xwgt] if missing_adliadl==1
sum nrowclme2_cons [aw=w2xwgt] if missing_adliadl==1
sum efficiency_cons [aw=w2xwgt] if missing_adliadl==1
tab depression_cons [aw=w2xwgt] if missing_adliadl==1
sum depression_cons [aw=w2xwgt] if missing_adliadl==1
tab ADLw2_cons [aw=w2xwgt] if missing_adliadl==1
sum ADLw2_cons [aw=w2xwgt] if missing_adliadl==1
tab IADLw2_cons [aw=w2xwgt] if missing_adliadl==1
sum IADLw2_cons [aw=w2xwgt] if missing_adliadl==1

tab totalSPPB_cons if missing_adliadl==0
sum totalSPPB_cons if missing_adliadl==0
tab balance_cons if missing_adliadl==0
tab repcstest_cons if missing_adliadl==0
tab gait_cons if missing_adliadl==0
sum age_cons if missing_adliadl==0
tab sex_cons if missing_adliadl==0
tab eth_cons if missing_adliadl==0
tab activity_cons if missing_adliadl==0
tab marital_cons if missing_adliadl==0
tab dimar2 if missing_adliadl==0
tab employment_cons if missing_adliadl==0
tab wpdes2 if missing_adliadl==0
tab education_cons if missing_adliadl==0
tab w2edqual2 if missing_adliadl==0
tab wealth_cons if missing_adliadl==0
sum bmic_cons if missing_adliadl==0
tab oribi_cons if missing_adliadl==0
sum wordlist_cons if missing_adliadl==0
tab prosbi2_cons if missing_adliadl==0
sum fluency_cons if missing_adliadl==0
sum nrowclme2_cons if missing_adliadl==0
sum efficiency_cons if missing_adliadl==0
tab depression_cons if missing_adliadl==0
sum depression_cons if missing_adliadl==0
tab ADLw2_cons if missing_adliadl==0
sum ADLw2_cons if missing_adliadl==0
tab IADLw2_cons if missing_adliadl==0
sum IADLw2_cons if missing_adliadl==0

tab totalSPPB_cons if missing_adliadl==1
sum totalSPPB_cons if missing_adliadl==1
tab balance_cons if missing_adliadl==1
tab repcstest_cons if missing_adliadl==1
tab gait_cons if missing_adliadl==1
sum age_cons if missing_adliadl==1
tab sex_cons if missing_adliadl==1
tab eth_cons if missing_adliadl==1
tab activity_cons if missing_adliadl==1
tab marital_cons if missing_adliadl==1
tab dimar2 if missing_adliadl==1
tab employment_cons if missing_adliadl==1
tab wpdes2 if missing_adliadl==1
tab education_cons if missing_adliadl==1
tab w2edqual2 if missing_adliadl==1
tab wealth_cons if missing_adliadl==1
sum bmic_cons if missing_adliadl==1
tab oribi_cons if missing_adliadl==1
sum wordlist_cons if missing_adliadl==1
tab prosbi2_cons if missing_adliadl==1
sum fluency_cons if missing_adliadl==1
sum nrowclme2_cons if missing_adliadl==1
sum efficiency_cons if missing_adliadl==1
tab depression_cons if missing_adliadl==1
sum depression_cons if missing_adliadl==1
tab ADLw2_cons if missing_adliadl==1
sum ADLw2_cons if missing_adliadl==1
tab IADLw2_cons if missing_adliadl==1
sum IADLw2_cons if missing_adliadl==1

gen missing_falls = .
replace missing_falls = 0 if totalSPPB_cons != . & age_cons != . & sex_cons != . & eth_cons != . & marital_cons != . & employment_cons != . & education_cons != . & wealth_cons != . & activity_cons != .  & bmic_cons != . & oribi_cons != . & wordlist_cons != . & prosbi2_cons != . & fluency_cons != . & nrowclme2_cons != . & efficiency_cons != . & depression_cons != . & fallsw2_cons != . & (falls3 != . | falls4 != . | falls5 != . | falls6 != . | falls7 != . | falls8 != . | falls9 != .)
replace missing_falls = 1 if missing_falls != 0

tab totalSPPB_cons [aw=w2xwgt] if missing_falls==0
sum totalSPPB_cons [aw=w2xwgt] if missing_falls==0
tab balance_cons [aw=w2xwgt] if missing_falls==0
tab repcstest_cons [aw=w2xwgt] if missing_falls==0
tab gait_cons [aw=w2xwgt] if missing_falls==0
sum age_cons [aw=w2xwgt] if missing_falls==0
tab sex_cons [aw=w2xwgt] if missing_falls==0
tab eth_cons [aw=w2xwgt] if missing_falls==0
tab activity_cons [aw=w2xwgt] if missing_falls==0
tab marital_cons [aw=w2xwgt] if missing_falls==0
tab dimar2 [aw=w2xwgt] if missing_falls==0
tab employment_cons [aw=w2xwgt] if missing_falls==0
tab wpdes2 [aw=w2xwgt] if missing_falls==0
tab education_cons [aw=w2xwgt] if missing_falls==0
tab w2edqual2 [aw=w2xwgt] if missing_falls==0
tab wealth_cons [aw=w2xwgt] if missing_falls==0
sum bmic_cons [aw=w2xwgt] if missing_falls==0
tab oribi_cons [aw=w2xwgt] if missing_falls==0
sum wordlist_cons [aw=w2xwgt] if missing_falls==0
tab prosbi2_cons [aw=w2xwgt] if missing_falls==0
sum fluency_cons [aw=w2xwgt] if missing_falls==0
sum nrowclme2_cons [aw=w2xwgt] if missing_falls==0
sum efficiency_cons [aw=w2xwgt] if missing_falls==0
tab depression_cons [aw=w2xwgt] if missing_falls==0
sum depression_cons [aw=w2xwgt] if missing_falls==0
tab fallsw2_cons [aw=w2xwgt] if missing_falls==0

tab totalSPPB_cons [aw=w2xwgt] if missing_falls==1
sum totalSPPB_cons [aw=w2xwgt] if missing_falls==1
tab balance_cons [aw=w2xwgt] if missing_falls==1
tab repcstest_cons [aw=w2xwgt] if missing_falls==1
tab gait_cons [aw=w2xwgt] if missing_falls==1
sum age_cons [aw=w2xwgt] if missing_falls==1
tab sex_cons [aw=w2xwgt] if missing_falls==1
tab eth_cons [aw=w2xwgt] if missing_falls==1
tab activity_cons [aw=w2xwgt] if missing_falls==1
tab marital_cons [aw=w2xwgt] if missing_falls==1
tab dimar2 [aw=w2xwgt] if missing_falls==1
tab employment_cons [aw=w2xwgt] if missing_falls==1
tab wpdes2 [aw=w2xwgt] if missing_falls==1
tab education_cons [aw=w2xwgt] if missing_falls==1
tab w2edqual2 [aw=w2xwgt] if missing_falls==1
tab wealth_cons [aw=w2xwgt] if missing_falls==1
sum bmic_cons [aw=w2xwgt] if missing_falls==1
tab oribi_cons [aw=w2xwgt] if missing_falls==1
sum wordlist_cons [aw=w2xwgt] if missing_falls==1
tab prosbi2_cons [aw=w2xwgt] if missing_falls==1
sum fluency_cons [aw=w2xwgt] if missing_falls==1
sum nrowclme2_cons [aw=w2xwgt] if missing_falls==1
sum efficiency_cons [aw=w2xwgt] if missing_falls==1
tab depression_cons [aw=w2xwgt] if missing_falls==1
sum depression_cons [aw=w2xwgt] if missing_falls==1
tab fallsw2_cons [aw=w2xwgt] if missing_falls==1

tab totalSPPB_cons if missing_falls==0
sum totalSPPB_cons if missing_falls==0
tab balance_cons if missing_falls==0
tab repcstest_cons if missing_falls==0
tab gait_cons if missing_falls==0
sum age_cons if missing_falls==0
tab sex_cons if missing_falls==0
tab eth_cons if missing_falls==0
tab activity_cons if missing_falls==0
tab marital_cons if missing_falls==0
tab dimar2 if missing_falls==0
tab employment_cons if missing_falls==0
tab wpdes2 if missing_falls==0
tab education_cons if missing_falls==0
tab w2edqual2 if missing_falls==0
tab wealth_cons if missing_falls==0
sum bmic_cons if missing_falls==0
tab oribi_cons if missing_falls==0
sum wordlist_cons if missing_falls==0
tab prosbi2_cons if missing_falls==0
sum fluency_cons if missing_falls==0
sum nrowclme2_cons if missing_falls==0
sum efficiency_cons if missing_falls==0
tab depression_cons if missing_falls==0
sum depression_cons if missing_falls==0
tab fallsw2_cons if missing_falls==0

tab totalSPPB_cons if missing_falls==1
sum totalSPPB_cons if missing_falls==1
tab balance_cons if missing_falls==1
tab repcstest_cons if missing_falls==1
tab gait_cons if missing_falls==1
sum age_cons if missing_falls==1
tab sex_cons if missing_falls==1
tab eth_cons if missing_falls==1
tab activity_cons if missing_falls==1
tab marital_cons if missing_falls==1
tab dimar2 if missing_falls==1
tab employment_cons if missing_falls==1
tab wpdes2 if missing_falls==1
tab education_cons if missing_falls==1
tab w2edqual2 if missing_falls==1
tab wealth_cons if missing_falls==1
sum bmic_cons if missing_falls==1
tab oribi_cons if missing_falls==1
sum wordlist_cons if missing_falls==1
tab prosbi2_cons if missing_falls==1
sum fluency_cons if missing_falls==1
sum nrowclme2_cons if missing_falls==1
sum efficiency_cons if missing_falls==1
tab depression_cons if missing_falls==1
sum depression_cons if missing_falls==1
tab fallsw2_cons if missing_falls==1

save descwide2.dta

use descwide2.dta
tab dimar2 [aw=w2xwgt] if missing_mob==1
replace dimar2 = . if dimar2<0
tab dimar2 [aw=w2xwgt] if missing_mob==1
tab wpdes2 [aw=w2xwgt] if missing_mob==1
replace wpdes2 = . if inlist(wpdes2,85,86)
tab wpdes2 [aw=w2xwgt] if missing_mob==1
tab education_cons [aw=w2xwgt] if missing_mob==1
tab w2edqual2 [aw=w2xwgt] if missing_mob==1
replace w2edqual2 = . if inlist(w2edqual2,6,-9,-8)
tab w2edqual2 [aw=w2xwgt] if missing_mob==1

tab dimar2 [aw=w2xwgt] if missing_adliadl==1
tab wpdes2 [aw=w2xwgt] if missing_adliadl==1
tab education_cons [aw=w2xwgt] if missing_adliadl==1
tab w2edqual2 [aw=w2xwgt] if missing_adliadl==1

tab dimar2 [aw=w2xwgt] if missing_falls==1
tab wpdes2 [aw=w2xwgt] if missing_falls==1
tab education_cons [aw=w2xwgt] if missing_falls==1
tab w2edqual2 [aw=w2xwgt] if missing_falls==1
save descwide3.dta

use descwide3.dta
ttest age_cons, by(missing_mob)
ttest totalSPPB_cons, by(missing_mob)
ttest bmic_cons, by(missing_mob)
ttest depression_cons, by(missing_mob)
ttest mobilityw2_cons, by(missing_mob)

ttest age_cons, by(missing_adliadl)
ttest totalSPPB_cons, by(missing_adliadl)
ttest bmic_cons, by(missing_adliadl)
ttest depression_cons, by(missing_adliadl)
ttest ADLw2_cons, by(missing_adliadl)
ttest IADLw2_cons, by(missing_adliadl)

ttest age_cons, by(missing_falls)
ttest totalSPPB_cons, by(missing_falls)
ttest bmic_cons, by(missing_falls)
ttest depression_cons, by(missing_falls)

tabulate dimar2 missing_mob, chi2
tabulate dimar2 missing_adliadl, chi2
tabulate dimar2 missing_falls, chi2

tabulate sex_cons missing_mob, chi2
tabulate sex_cons missing_adliadl, chi2
tabulate sex_cons missing_falls, chi2

tabulate eth_cons missing_mob, chi2
tabulate eth_cons missing_adliadl, chi2
tabulate eth_cons missing_falls, chi2

tabulate wpdes2 missing_mob, chi2
tabulate wpdes2 missing_adliadl, chi2
tabulate wpdes2 missing_falls, chi2

gen educa2 = 1 if w2edqual2==7
replace educa2 = 2 if education_cons==1
replace educa2 = 3 if w2edqual2==2
replace educa2 = 4 if w2edqual2==1

tabulate educa2 missing_mob, chi2
tabulate educa2 missing_adliadl, chi2
tabulate educa2 missing_falls, chi2

tabulate wealth_cons missing_mob, chi2
tabulate wealth_cons missing_adliadl, chi2
tabulate wealth_cons missing_falls, chi2

tabulate activity_cons missing_mob, chi2
tabulate activity_cons missing_adliadl, chi2
tabulate activity_cons missing_falls, chi2

tabulate balance_cons missing_mob, chi2
tabulate balance_cons missing_adliadl, chi2
tabulate balance_cons missing_falls, chi2

tabulate repcstest_cons missing_mob, chi2
tabulate repcstest_cons missing_adliadl, chi2
tabulate repcstest_cons missing_falls, chi2

tabulate gait_cons missing_mob, chi2
tabulate gait_cons missing_adliadl, chi2
tabulate gait_cons missing_falls, chi2

tabulate fallsw2_cons missing_falls, chi2
save descwide3.dta, replace

use descwide3.dta
tab dimar2 if missing_mob==0
tab wpdes2 if missing_mob==0
tab education_cons if missing_mob==0
tab w2edqual2 if missing_mob==0

tab dimar2 if missing_mob==1
tab wpdes2 if missing_mob==1
tab education_cons if missing_mob==1
tab w2edqual2 if missing_mob==1

tab dimar2 if missing_adliadl==0
tab wpdes2 if missing_adliadl==0
tab education_cons if missing_adliadl==0
tab w2edqual2 if missing_adliadl==0

tab dimar2 if missing_adliadl==1
tab wpdes2 if missing_adliadl==1
tab education_cons if missing_adliadl==1
tab w2edqual2 if missing_adliadl==1

tab dimar2 if missing_falls==0
tab wpdes2 if missing_falls==0
tab education_cons if missing_falls==0
tab w2edqual2 if missing_falls==0

tab dimar2 if missing_falls==1
tab wpdes2 if missing_falls==1
tab education_cons if missing_falls==1
tab w2edqual2 if missing_falls==1

use descwide3.dta
gen oribiz = oribi_cons
gen wordlistz = wordlist_cons
gen prosbi2z = prosbi2_cons
gen fluencyz = fluency_cons
gen nrowclme2z = nrowclme2_cons
gen efficiencyz = efficiency_cons

egen z2oribimob0 = std(oribiz) if missing_mob==0
egen z2wordlistmob0 = std(wordlistz) if missing_mob==0
egen z2prosbi2mob0 = std(prosbi2z) if missing_mob==0
egen z2fluencymob0 = std(fluencyz) if missing_mob==0
egen z2nrowclme2mob0 = std(nrowclme2z) if missing_mob==0
egen z2efficiencymob0 = std(efficiencyz) if missing_mob==0
gen cognitiverawmob0 = z2oribimob0 + z2wordlistmob0 + z2prosbi2mob0 + z2fluencymob0 + z2nrowclme2mob0 + z2efficiencymob0
egen zcogmob0 = std(cognitiverawmob0)

egen z2oribimob1 = std(oribiz) if missing_mob==1
egen z2wordlistmob1 = std(wordlistz) if missing_mob==1
egen z2prosbi2mob1 = std(prosbi2z) if missing_mob==1
egen z2fluencymob1 = std(fluencyz) if missing_mob==1
egen z2nrowclme2mob1 = std(nrowclme2z) if missing_mob==1
egen z2efficiencymob1 = std(efficiencyz) if missing_mob==1
gen cognitiverawmob1 = z2oribimob1 + z2wordlistmob1 + z2prosbi2mob1 + z2fluencymob1 + z2nrowclme2mob1 + z2efficiencymob1
egen zcogmob1 = std(cognitiverawmob1)

egen z2oribiadliadl0 = std(oribiz) if missing_adliadl==0
egen z2wordlistadliadl0 = std(wordlistz) if missing_adliadl==0
egen z2prosbi2adliadl0 = std(prosbi2z) if missing_adliadl==0
egen z2fluencyadliadl0 = std(fluencyz) if missing_adliadl==0
egen z2nrowclme2adliadl0 = std(nrowclme2z) if missing_adliadl==0
egen z2efficiencyadliadl0 = std(efficiencyz) if missing_adliadl==0
gen cognitiverawadliadl0 = z2oribiadliadl0 + z2wordlistadliadl0 + z2prosbi2adliadl0 + z2fluencyadliadl0 + z2nrowclme2adliadl0 + z2efficiencyadliadl0
egen zcogadliadl0 = std(cognitiverawadliadl0)

egen z2oribiadliadl1 = std(oribiz) if missing_adliadl==1
egen z2wordlistadliadl1 = std(wordlistz) if missing_adliadl==1
egen z2prosbi2adliadl1 = std(prosbi2z) if missing_adliadl==1
egen z2fluencyadliadl1 = std(fluencyz) if missing_adliadl==1
egen z2nrowclme2adliadl1 = std(nrowclme2z) if missing_adliadl==1
egen z2efficiencyadliadl1 = std(efficiencyz) if missing_adliadl==1
gen cognitiverawadliadl1 = z2oribiadliadl1 + z2wordlistadliadl1 + z2prosbi2adliadl1 + z2fluencyadliadl1 + z2nrowclme2adliadl1 + z2efficiencyadliadl1
egen zcogadliadl1 = std(cognitiverawadliadl1)

egen z2oribifall0 = std(oribiz) if missing_falls==0
egen z2wordlistfall0 = std(wordlistz) if missing_falls==0
egen z2prosbi2fall0 = std(prosbi2z) if missing_falls==0
egen z2fluencyfall0 = std(fluencyz) if missing_falls==0
egen z2nrowclme2fall0 = std(nrowclme2z) if missing_falls==0
egen z2efficiencyfall0 = std(efficiencyz) if missing_falls==0
gen cognitiverawfall0 = z2oribifall0 + z2wordlistfall0 + z2prosbi2fall0 + z2fluencyfall0 + z2nrowclme2fall0 + z2efficiencyfall0
egen zcogfall0 = std(cognitiverawfall0)

egen z2oribifall1 = std(oribiz) if missing_falls==1
egen z2wordlistfall1 = std(wordlistz) if missing_falls==1
egen z2prosbi2fall1 = std(prosbi2z) if missing_falls==1
egen z2fluencyfall1 = std(fluencyz) if missing_falls==1
egen z2nrowclme2fall1 = std(nrowclme2z) if missing_falls==1
egen z2efficiencyfall1 = std(efficiencyz) if missing_falls==1
gen cognitiverawfall1 = z2oribifall1 + z2wordlistfall1 + z2prosbi2fall1 + z2fluencyfall1 + z2nrowclme2fall1 + z2efficiencyfall1
egen zcogfall1 = std(cognitiverawfall1)

sum zcogmob0
sum zcogmob1
sum zcogadliadl0
sum zcogadliadl1
sum zcogfall0
sum zcogfall1

sum zcogmob0 [aw=w2xwgt]
sum zcogmob1 [aw=w2xwgt]
sum zcogadliadl0 [aw=w2xwgt]
sum zcogadliadl1 [aw=w2xwgt]
sum zcogfall0 [aw=w2xwgt]
sum zcogfall1 [aw=w2xwgt]

egen z2oribimob = std(oribiz) if inlist(missing_mob,0,1)
egen z2wordlistmob = std(wordlistz) if inlist(missing_mob,0,1)
egen z2prosbi2mob = std(prosbi2z) if inlist(missing_mob,0,1)
egen z2fluencymob = std(fluencyz) if inlist(missing_mob,0,1)
egen z2nrowclme2mob = std(nrowclme2z) if inlist(missing_mob,0,1)
egen z2efficiencymob = std(efficiencyz) if inlist(missing_mob,0,1)
gen cognitiverawmob = z2oribimob + z2wordlistmob + z2prosbi2mob + z2fluencymob + z2nrowclme2mob + z2efficiencymob
egen zcogmob = std(cognitiverawmob)

egen z2oribiadliadl = std(oribiz) if inlist(missing_adliadl,0,1)
egen z2wordlistadliadl = std(wordlistz) if inlist(missing_adliadl,0,1)
egen z2prosbi2adliadl = std(prosbi2z) if inlist(missing_adliadl,0,1)
egen z2fluencyadliadl = std(fluencyz) if inlist(missing_adliadl,0,1)
egen z2nrowclme2adliadl = std(nrowclme2z) if inlist(missing_adliadl,0,1)
egen z2efficiencyadliadl = std(efficiencyz) if inlist(missing_adliadl,0,1)
gen cognitiverawadliadl = z2oribiadliadl + z2wordlistadliadl + z2prosbi2adliadl + z2fluencyadliadl + z2nrowclme2adliadl + z2efficiencyadliadl
egen zcogadliadl = std(cognitiverawadliadl)

egen z2oribifall = std(oribiz) if inlist(missing_falls,0,1)
egen z2wordlistfall = std(wordlistz) if inlist(missing_falls,0,1)
egen z2prosbi2fall = std(prosbi2z) if inlist(missing_falls,0,1)
egen z2fluencyfall = std(fluencyz) if inlist(missing_falls,0,1)
egen z2nrowclme2fall = std(nrowclme2z) if inlist(missing_falls,0,1)
egen z2efficiencyfall = std(efficiencyz) if inlist(missing_falls,0,1)
gen cognitiverawfall = z2oribifall + z2wordlistfall + z2prosbi2fall + z2fluencyfall + z2nrowclme2fall + z2efficiencyfall
egen zcogfall = std(cognitiverawfall)

sum zcogmob if missing_mob==0
sum zcogmob if missing_mob==1
sum zcogadliadl if missing_adliadl==0
sum zcogadliadl if missing_adliadl==1
sum zcogfall if missing_falls==0
sum zcogfall if missing_falls==1

sum zcogmob [aw=w2xwgt] if missing_mob==0
sum zcogmob [aw=w2xwgt] if missing_mob==1
sum zcogadliadl [aw=w2xwgt] if missing_adliadl==0
sum zcogadliadl [aw=w2xwgt] if missing_adliadl==1
sum zcogfall [aw=w2xwgt] if missing_falls==0
sum zcogfall [aw=w2xwgt] if missing_falls==1

ttest zcogmob, by(missing_mob)
ttest zcogadliadl, by(missing_adliadl)
ttest zcogfall, by(missing_falls)
save descwide4.dta

* Weighted (using the cross-sectional sampling weight from Wave 2) descriptive statistics for mobility impairments, ADL disabilities, IADL disabilities, and falls at each wave of follow-up (Table S6)
use mobilityCCzcog.dta
sum zcog_cons if firstnew==1
sum zcog_cons [aw=w2xwgt] if firstnew==1
use ADLIADLCCzcog.dta
sum zcog_cons if firstnew==1
sum zcog_cons [aw=w2xwgt] if firstnew==1
use fallsCCzcog.dta
sum zcog_cons if firstnew==1
sum zcog_cons [aw=w2xwgt] if firstnew==1

use mobilityCCzcog.dta
sum mobility [aw=w2xwgt] if wave==3
sum mobility [aw=w2xwgt] if wave==4
sum mobility [aw=w2xwgt] if wave==5
sum mobility [aw=w2xwgt] if wave==6
sum mobility [aw=w2xwgt] if wave==7
sum mobility [aw=w2xwgt] if wave==8
sum mobility [aw=w2xwgt] if wave==9
use ADLIADLCCzcog.dta
sum ADL [aw=w2xwgt] if wave==3
sum ADL [aw=w2xwgt] if wave==4
sum ADL [aw=w2xwgt] if wave==5
sum ADL [aw=w2xwgt] if wave==6
sum ADL [aw=w2xwgt] if wave==7
sum ADL [aw=w2xwgt] if wave==8
sum ADL [aw=w2xwgt] if wave==9
sum IADL [aw=w2xwgt] if wave==3
sum IADL [aw=w2xwgt] if wave==4
sum IADL [aw=w2xwgt] if wave==5
sum IADL [aw=w2xwgt] if wave==6
sum IADL [aw=w2xwgt] if wave==7
sum IADL [aw=w2xwgt] if wave==8
sum IADL [aw=w2xwgt] if wave==9
use fallsCCzcog.dta
tab falls [aw=w2xwgt] if wave==3
tab falls [aw=w2xwgt] if wave==4
tab falls [aw=w2xwgt] if wave==5
tab falls [aw=w2xwgt] if wave==6
tab falls [aw=w2xwgt] if wave==7
tab falls [aw=w2xwgt] if wave==8
tab falls [aw=w2xwgt] if wave==9