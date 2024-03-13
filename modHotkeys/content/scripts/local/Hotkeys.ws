class KeyBinder
{
    private var ModifierA          : bool;
	private var ModifierB          : bool;
	private var ModifierC          : bool;
       default ModifierA = false;
	   default ModifierB = false;
	   default ModifierC = false;
	   
	private var mSwitch : cSwitch;
	private var mSwitch2 : cSwitch2;
	private var mSwitch3 : cSwitch3;

	private var mDisengage : cDisengage;
	
	private var mCough : cCough;
     
    private var mUrinate : cUrinate;
	
	private var mStepInPoo : cStepInPoo;
	
	private var mPayRespects : cPayRespects;
	
    private var mFan : cFan;

	private var mFlute : cFlute;
		
	private var mMoney : cMoney;
    
	private var mNote : cNote;
    
	private var mSpar : cSpar;
	 
	private var mTour : cTour;
	private var mMonocular : cMonocular;
	private var mNoticeBoard : cNoticeBoard;
	
	private var mWarmUp : cWarmUp;
	private var mSplashFace : cSplashFace;
	
	private var mLeanWall : cLeanWall;
	private var mLeanWallHips : cLeanWallHips;
	private var mTiredWallLean : cTiredWallLean;
    
	private var mSquat : cSquat;
	private var mKneel : cKneel;
	private var mCrouch : cCrouch;
	
    private var mSitBroken : cSitBroken;
	private var mSitGroundInjured : cSitGroundInjured;
	private var mVanillaSit : cVanillaSit;
	private var mPipeGround : cPipeGround;
	private var mSitPier : cSitPier;
	private var mSitBathe : cSitBathe;
	private var mSitGroundWarmUp : cSitGroundWarmUp;
	private var mSitGroundPain : cSitGroundPain;
	private var mSitGroundCrossLegged : cSitGroundCrossLegged;
	
	private var mSleepWall : cSleepWall;
	private var mSleepGround : cSleepGround;
	private var mSleepGroundDrunk : cSleepGroundDrunk;
	
	private var mSitChairDetermined : cSitChairDetermined;
	private var mSitChairBored : cSitChairBored;
	private var mSitChairNeutral : cSitChairNeutral;
	private var mSitChairRelaxed : cSitChairRelaxed;
	private var mSitSharpenSword : cSitSharpenSword;
	private var mSitChairRead : cSitChairRead;
	
	private var mArmorFlex : cArmorFlex;
	private var mExamineSword : cExamineSword;
	private var mExamineCrossbow : cExamineCrossbow;
	
	private var mHoe : cHoe;
	private var mShovel : cShovel;
	private var mPickAxe : cPickAxe;
	private var mFieldWork : cFieldWork;
	private var mPitchfork : cPitchfork;
	private var mBroom : cBroom;
	private var mBrushFloor : cBrushFloor;
	private var mBrushHorse : cBrushHorse;
	private var mFishing : cFishing;
	private var mCook : cCook;
	
	function Init()
    {
        //=======================Utility============================\\
		
		
		theInput.RegisterListener(this, 'OnModifierA', 'ModifierA');
		theInput.RegisterListener(this, 'OnModifierB', 'ModifierB');
		theInput.RegisterListener(this, 'OnModifierC', 'ModifierC');
		
		theInput.RegisterListener(this, 'OnSwitch', 'Switch');
		theInput.RegisterListener(this, 'OnSwitch2', 'Switch2');
		theInput.RegisterListener(this, 'OnSwitch3', 'Switch3');

        theInput.RegisterListener(this, 'OnDisengage', 'Disengage');
		
	
		//=======================Neutral============================\\
	
		
		theInput.RegisterListener(this, 'OnProudWalk', 'ProudWalk');  
		theInput.RegisterListener(this, 'OnNormalWalk', 'NormalWalk');
		
		theInput.RegisterListener(this, 'OnTour', 'Tour');
		theInput.RegisterListener(this, 'OnScout', 'Scout');
	    theInput.RegisterListener(this, 'OnMonocular', 'Monocular');
    	theInput.RegisterListener(this, 'OnNoticeBoard', 'NoticeBoard');
                
		theInput.RegisterListener(this, 'OnMoney', 'Money');
		theInput.RegisterListener(this, 'OnMoneyBag', 'MoneyBag');
        
		theInput.RegisterListener(this, 'OnExamineSword', 'ExamineSword');
		theInput.RegisterListener(this, 'OnExamineCrossbow', 'ExamineCrossbow');

		theInput.RegisterListener(this, 'OnArmorFlex', 'ArmorFlex');
        theInput.RegisterListener(this, 'OnClothesTinker', 'ClothesTinker');
    
		theInput.RegisterListener(this, 'OnCough', 'Cough');
        theInput.RegisterListener(this, 'OnScratch', 'Scratch');
		theInput.RegisterListener(this, 'OnStretch', 'Stretch');
		
		theInput.RegisterListener(this, 'OnClap', 'Clap');
		theInput.RegisterListener(this, 'OnHalt', 'Halt');
		theInput.RegisterListener(this, 'OnPayRespects', 'PayRespects');
	
		theInput.RegisterListener(this, 'OnTossCoin1', 'TossCoin1');
		theInput.RegisterListener(this, 'OnTossCoin2', 'TossCoin2');
		
		theInput.RegisterListener(this, 'OnWave', 'Wave');
        theInput.RegisterListener(this, 'OnGreet', 'Greet');
		theInput.RegisterListener(this, 'OnBowClassic', 'BowClassic');
		theInput.RegisterListener(this, 'OnBowNilfgaard', 'BowNilfgaard');
		
		theInput.RegisterListener(this, 'OnWarmUp', 'WarmUp');
		theInput.RegisterListener(this, 'OnThrowWood', 'ThrowWood');
		theInput.RegisterListener(this, 'OnSplashFace', 'SplashFace');

		theInput.RegisterListener(this, 'OnPetHorse', 'PetHorse');
		theInput.RegisterListener(this, 'OnBrushHorse', 'BrushHorse');
 		
		theInput.RegisterListener(this, 'OnPuke', 'Puke');
		theInput.RegisterListener(this, 'OnUrinate', 'Urinate');

		theInput.RegisterListener(this, 'OnLeanWall', 'LeanWall');
		theInput.RegisterListener(this, 'OnLeanWallHips', 'LeanWallHips');
        theInput.RegisterListener(this, 'OnTiredWallLean', 'TiredWallLean');
		
		theInput.RegisterListener(this, 'OnCrouch', 'Crouch');
		theInput.RegisterListener(this, 'OnSquat', 'Squat');
		theInput.RegisterListener(this, 'OnKneel', 'Kneel');
		
		theInput.RegisterListener(this, 'OnSleepWall', 'SleepWall');
		theInput.RegisterListener(this, 'OnSleepGround', 'SleepGround');
		theInput.RegisterListener(this, 'OnSleepGroundDrunk', 'SleepGroundDrunk');

		theInput.RegisterListener(this, 'OnVanillaSit', 'VanillaSit');
		theInput.RegisterListener(this, 'OnSitBroken', 'SitBroken');
	    theInput.RegisterListener(this, 'OnSitGroundInjured', 'SitGroundInjured');
		theInput.RegisterListener(this, 'OnSitGroundPain', 'SitGroundPain');
		theInput.RegisterListener(this, 'OnSitGroundCrossLegged', 'SitGroundCrossLegged');
		theInput.RegisterListener(this, 'OnPipeGround', 'PipeGround');
		theInput.RegisterListener(this, 'OnSitGroundWarmUp', 'SitGroundWarmUp');
		theInput.RegisterListener(this, 'OnSitBathe', 'SitBathe');
		theInput.RegisterListener(this, 'OnSitPier', 'SitPier');
		
		theInput.RegisterListener(this, 'OnSitChairNeutral', 'SitChairNeutral');
		theInput.RegisterListener(this, 'OnSitChairRelaxed', 'SitChairRelaxed');
		theInput.RegisterListener(this, 'OnSitChairBored', 'SitChairBored');
		theInput.RegisterListener(this, 'OnSitChairDetermined', 'SitChairDetermined');
	    theInput.RegisterListener(this, 'OnSitSharpenSword', 'SitSharpenSword');
		theInput.RegisterListener(this, 'OnSitChairRead', 'SitChairRead');
		
		theInput.RegisterListener(this, 'OnHoe', 'Hoe');
		theInput.RegisterListener(this, 'OnShovel', 'Shovel');
    	theInput.RegisterListener(this, 'OnPickAxe', 'PickAxe');
		theInput.RegisterListener(this, 'OnFieldWork', 'FieldWork');
		theInput.RegisterListener(this, 'OnPitchfork', 'Pitchfork');
	    theInput.RegisterListener(this, 'OnBrushFloor', 'BrushFloor');
		theInput.RegisterListener(this, 'OnBroom', 'Broom');
		theInput.RegisterListener(this, 'OnCook', 'Cook');
		theInput.RegisterListener(this, 'OnFishing', 'Fishing');
		
		theInput.RegisterListener(this, 'OnPlayAard', 'PlayAard');
        theInput.RegisterListener(this, 'OnPlayIgni', 'PlayIgni');
		
		theInput.RegisterListener(this, 'OnFan', 'Fan');

		theInput.RegisterListener(this, 'OnNote', 'Note');
		
		theInput.RegisterListener(this, 'OnSpar', 'Spar');
		
		theInput.RegisterListener(this, 'OnFlute', 'Flute');
		
		theInput.RegisterListener(this, 'OnStepInPoo', 'StepInPoo');
		
		
		//=======================MODIFIER A============================\\
		
		
		theInput.RegisterListener(this, 'OnProudWalkA', 'ProudWalkA');  
		theInput.RegisterListener(this, 'OnNormalWalkA', 'NormalWalkA');
		
		theInput.RegisterListener(this, 'OnTourA', 'TourA');
		theInput.RegisterListener(this, 'OnScoutA', 'ScoutA');
	    theInput.RegisterListener(this, 'OnMonocularA', 'MonocularA');
    	theInput.RegisterListener(this, 'OnNoticeBoardA', 'NoticeBoardA');
                
		theInput.RegisterListener(this, 'OnMoneyA', 'MoneyA');
		theInput.RegisterListener(this, 'OnMoneyBagA', 'MoneyBagA');
        
		theInput.RegisterListener(this, 'OnExamineSwordA', 'ExamineSwordA');
		theInput.RegisterListener(this, 'OnExamineCrossbowA', 'ExamineCrossbowA');

		theInput.RegisterListener(this, 'OnArmorFlexA', 'ArmorFlexA');
        theInput.RegisterListener(this, 'OnClothesTinkerA', 'ClothesTinkerA');
    
		theInput.RegisterListener(this, 'OnCoughA', 'CoughA');
        theInput.RegisterListener(this, 'OnScratchA', 'ScratchA');
		theInput.RegisterListener(this, 'OnStretchA', 'StretchA');
		
		theInput.RegisterListener(this, 'OnClapA', 'ClapA');
		theInput.RegisterListener(this, 'OnHaltA', 'HaltA');
		theInput.RegisterListener(this, 'OnPayRespectsA', 'PayRespectsA');
	
		theInput.RegisterListener(this, 'OnTossCoin1A', 'TossCoin1A');
		theInput.RegisterListener(this, 'OnTossCoin2A', 'TossCoin2A');
		
		theInput.RegisterListener(this, 'OnWaveA', 'WaveA');
        theInput.RegisterListener(this, 'OnGreetA', 'GreetA');
		theInput.RegisterListener(this, 'OnBowClassicA', 'BowClassicA');
		theInput.RegisterListener(this, 'OnBowNilfgaardA', 'BowNilfgaardA');
		
		theInput.RegisterListener(this, 'OnWarmUpA', 'WarmUpA');
		theInput.RegisterListener(this, 'OnThrowWoodA', 'ThrowWoodA');
		theInput.RegisterListener(this, 'OnSplashFaceA', 'SplashFaceA');

		theInput.RegisterListener(this, 'OnPetHorseA', 'PetHorseA');
		theInput.RegisterListener(this, 'OnBrushHorseA', 'BrushHorseA');
 		
		theInput.RegisterListener(this, 'OnPukeA', 'PukeA');
		theInput.RegisterListener(this, 'OnUrinateA', 'UrinateA');

		theInput.RegisterListener(this, 'OnLeanWallA', 'LeanWallA');
		theInput.RegisterListener(this, 'OnLeanWallHipsA', 'LeanWallHipsA');
        theInput.RegisterListener(this, 'OnTiredWallLeanA', 'TiredWallLeanA');
		
		theInput.RegisterListener(this, 'OnCrouchA', 'CrouchA');
		theInput.RegisterListener(this, 'OnSquatA', 'SquatA');
		theInput.RegisterListener(this, 'OnKneelA', 'KneelA');
		
		theInput.RegisterListener(this, 'OnSleepWallA', 'SleepWallA');
		theInput.RegisterListener(this, 'OnSleepGroundA', 'SleepGroundA');
		theInput.RegisterListener(this, 'OnSleepGroundDrunkA', 'SleepGroundDrunkA');

		theInput.RegisterListener(this, 'OnVanillaSitA', 'VanillaSitA');
		theInput.RegisterListener(this, 'OnSitBrokenA', 'SitBrokenA');
	    theInput.RegisterListener(this, 'OnSitGroundInjuredA', 'SitGroundInjuredA');
		theInput.RegisterListener(this, 'OnSitGroundPainA', 'SitGroundPainA');
		theInput.RegisterListener(this, 'OnSitGroundCrossLeggedA', 'SitGroundCrossLeggedA');
		theInput.RegisterListener(this, 'OnPipeGroundA', 'PipeGroundA');
		theInput.RegisterListener(this, 'OnSitGroundWarmUpA', 'SitGroundWarmUpA');
		theInput.RegisterListener(this, 'OnSitBatheA', 'SitBatheA');
		theInput.RegisterListener(this, 'OnSitPierA', 'SitPierA');
		
		theInput.RegisterListener(this, 'OnSitChairNeutralA', 'SitChairNeutralA');
		theInput.RegisterListener(this, 'OnSitChairRelaxedA', 'SitChairRelaxedA');
		theInput.RegisterListener(this, 'OnSitChairBoredA', 'SitChairBoredA');
		theInput.RegisterListener(this, 'OnSitChairDeterminedA', 'SitChairDeterminedA');
	    theInput.RegisterListener(this, 'OnSitSharpenSwordA', 'SitSharpenSwordA');
		theInput.RegisterListener(this, 'OnSitChairReadA', 'SitChairReadA');
		
		theInput.RegisterListener(this, 'OnHoeA', 'HoeA');
		theInput.RegisterListener(this, 'OnShovelA', 'ShovelA');
    	theInput.RegisterListener(this, 'OnPickAxeA', 'PickAxeA');
		theInput.RegisterListener(this, 'OnFieldWorkA', 'FieldWorkA');
		theInput.RegisterListener(this, 'OnPitchforkA', 'PitchforkA');
	    theInput.RegisterListener(this, 'OnBrushFloorA', 'BrushFloorA');
		theInput.RegisterListener(this, 'OnBroomA', 'BroomA');
		theInput.RegisterListener(this, 'OnCookA', 'CookA');
		theInput.RegisterListener(this, 'OnFishingA', 'FishingA');
		
		theInput.RegisterListener(this, 'OnPlayAardA', 'PlayAardA');
        theInput.RegisterListener(this, 'OnPlayIgniA', 'PlayIgniA');
		
		theInput.RegisterListener(this, 'OnFanA', 'FanA');

		theInput.RegisterListener(this, 'OnNoteA', 'NoteA');
		
		theInput.RegisterListener(this, 'OnSparA', 'SparA');
		
		theInput.RegisterListener(this, 'OnFluteA', 'FluteA');
		
		theInput.RegisterListener(this, 'OnStepInPooA', 'StepInPooA');
		
		
		//=======================MODIFIER B============================\\
		
		
		theInput.RegisterListener(this, 'OnProudWalkB', 'ProudWalkB');  
		theInput.RegisterListener(this, 'OnNormalWalkB', 'NormalWalkB');
		
		theInput.RegisterListener(this, 'OnTourB', 'TourB');
		theInput.RegisterListener(this, 'OnScoutB', 'ScoutB');
	    theInput.RegisterListener(this, 'OnMonocularB', 'MonocularB');
    	theInput.RegisterListener(this, 'OnNoticeBoardB', 'NoticeBoardB');
                
		theInput.RegisterListener(this, 'OnMoneyB', 'MoneyB');
		theInput.RegisterListener(this, 'OnMoneyBagB', 'MoneyBagB');
        
		theInput.RegisterListener(this, 'OnExamineSwordB', 'ExamineSwordB');
		theInput.RegisterListener(this, 'OnExamineCrossbowB', 'ExamineCrossbowB');

		theInput.RegisterListener(this, 'OnArmorFlexB', 'ArmorFlexB');
        theInput.RegisterListener(this, 'OnClothesTinkerB', 'ClothesTinkerB');
    
		theInput.RegisterListener(this, 'OnCoughB', 'CoughB');
        theInput.RegisterListener(this, 'OnScratchB', 'ScratchB');
		theInput.RegisterListener(this, 'OnStretchB', 'StretchB');
		
		theInput.RegisterListener(this, 'OnClapB', 'ClapB');
		theInput.RegisterListener(this, 'OnHaltB', 'HaltB');
		theInput.RegisterListener(this, 'OnPayRespectsB', 'PayRespectsB');
	
		theInput.RegisterListener(this, 'OnTossCoin1B', 'TossCoin1B');
		theInput.RegisterListener(this, 'OnTossCoin2B', 'TossCoin2B');
		
		theInput.RegisterListener(this, 'OnWaveB', 'WaveB');
        theInput.RegisterListener(this, 'OnGreetB', 'GreetB');
		theInput.RegisterListener(this, 'OnBowClassicB', 'BowClassicB');
		theInput.RegisterListener(this, 'OnBowNilfgaardB', 'BowNilfgaardB');
		
		theInput.RegisterListener(this, 'OnWarmUpB', 'WarmUpB');
		theInput.RegisterListener(this, 'OnThrowWoodB', 'ThrowWoodB');
		theInput.RegisterListener(this, 'OnSplashFaceB', 'SplashFaceB');

		theInput.RegisterListener(this, 'OnPetHorseB', 'PetHorseB');
		theInput.RegisterListener(this, 'OnBrushHorseB', 'BrushHorseB');
 		
		theInput.RegisterListener(this, 'OnPukeB', 'PukeB');
		theInput.RegisterListener(this, 'OnUrinateB', 'UrinateB');

		theInput.RegisterListener(this, 'OnLeanWallB', 'LeanWallB');
		theInput.RegisterListener(this, 'OnLeanWallHipsB', 'LeanWallHipsB');
        theInput.RegisterListener(this, 'OnTiredWallLeanB', 'TiredWallLeanB');
		
		theInput.RegisterListener(this, 'OnCrouchB', 'CrouchB');
		theInput.RegisterListener(this, 'OnSquatB', 'SquatB');
		theInput.RegisterListener(this, 'OnKneelB', 'KneelB');
		
		theInput.RegisterListener(this, 'OnSleepWallB', 'SleepWallB');
		theInput.RegisterListener(this, 'OnSleepGroundB', 'SleepGroundB');
		theInput.RegisterListener(this, 'OnSleepGroundDrunkB', 'SleepGroundDrunkB');

		theInput.RegisterListener(this, 'OnVanillaSitB', 'VanillaSitB');
		theInput.RegisterListener(this, 'OnSitBrokenB', 'SitBrokenB');
	    theInput.RegisterListener(this, 'OnSitGroundInjuredB', 'SitGroundInjuredB');
		theInput.RegisterListener(this, 'OnSitGroundPainB', 'SitGroundPainB');
		theInput.RegisterListener(this, 'OnSitGroundCrossLeggedB', 'SitGroundCrossLeggedB');
		theInput.RegisterListener(this, 'OnPipeGroundB', 'PipeGroundB');
		theInput.RegisterListener(this, 'OnSitGroundWarmUpB', 'SitGroundWarmUpB');
		theInput.RegisterListener(this, 'OnSitBatheB', 'SitBatheB');
		theInput.RegisterListener(this, 'OnSitPierB', 'SitPierB');
		
		theInput.RegisterListener(this, 'OnSitChairNeutralB', 'SitChairNeutralB');
		theInput.RegisterListener(this, 'OnSitChairRelaxedB', 'SitChairRelaxedB');
		theInput.RegisterListener(this, 'OnSitChairBoredB', 'SitChairBoredB');
		theInput.RegisterListener(this, 'OnSitChairDeterminedB', 'SitChairDeterminedB');
	    theInput.RegisterListener(this, 'OnSitSharpenSwordB', 'SitSharpenSwordB');
		theInput.RegisterListener(this, 'OnSitChairReadB', 'SitChairReadB');
		
		theInput.RegisterListener(this, 'OnHoeB', 'HoeB');
		theInput.RegisterListener(this, 'OnShovelB', 'ShovelB');
    	theInput.RegisterListener(this, 'OnPickAxeB', 'PickAxeB');
		theInput.RegisterListener(this, 'OnFieldWorkB', 'FieldWorkB');
		theInput.RegisterListener(this, 'OnPitchforkB', 'PitchforkB');
	    theInput.RegisterListener(this, 'OnBrushFloorB', 'BrushFloorB');
		theInput.RegisterListener(this, 'OnBroomB', 'BroomB');
		theInput.RegisterListener(this, 'OnCookB', 'CookB');
		theInput.RegisterListener(this, 'OnFishingB', 'FishingB');
		
		theInput.RegisterListener(this, 'OnPlayAardB', 'PlayAardB');
        theInput.RegisterListener(this, 'OnPlayIgniB', 'PlayIgniB');
		
		theInput.RegisterListener(this, 'OnFanB', 'FanB');

		theInput.RegisterListener(this, 'OnNoteB', 'NoteB');
		
		theInput.RegisterListener(this, 'OnSparB', 'SparB');
		
		theInput.RegisterListener(this, 'OnFluteB', 'FluteB');
		
		theInput.RegisterListener(this, 'OnStepInPooB', 'StepInPooB');
		
		
		//=======================MODIFIER C============================\\
		
		
		theInput.RegisterListener(this, 'OnProudWalkC', 'ProudWalkC');  
		theInput.RegisterListener(this, 'OnNormalWalkC', 'NormalWalkC');
		
		theInput.RegisterListener(this, 'OnTourC', 'TourC');
		theInput.RegisterListener(this, 'OnScoutC', 'ScoutC');
	    theInput.RegisterListener(this, 'OnMonocularC', 'MonocularC');
    	theInput.RegisterListener(this, 'OnNoticeBoardC', 'NoticeBoardC');
                
		theInput.RegisterListener(this, 'OnMoneyC', 'MoneyC');
		theInput.RegisterListener(this, 'OnMoneyBagC', 'MoneyBagC');
        
		theInput.RegisterListener(this, 'OnExamineSwordC', 'ExamineSwordC');
		theInput.RegisterListener(this, 'OnExamineCrossbowC', 'ExamineCrossbowC');

		theInput.RegisterListener(this, 'OnArmorFlexC', 'ArmorFlexC');
        theInput.RegisterListener(this, 'OnClothesTinkerC', 'ClothesTinkerC');
    
		theInput.RegisterListener(this, 'OnCoughC', 'CoughC');
        theInput.RegisterListener(this, 'OnScratchC', 'ScratchC');
		theInput.RegisterListener(this, 'OnStretchC', 'StretchC');
		
		theInput.RegisterListener(this, 'OnClapC', 'ClapC');
		theInput.RegisterListener(this, 'OnHaltC', 'HaltC');
		theInput.RegisterListener(this, 'OnPayRespectsC', 'PayRespectsC');
	
		theInput.RegisterListener(this, 'OnTossCoin1C', 'TossCoin1C');
		theInput.RegisterListener(this, 'OnTossCoin2C', 'TossCoin2C');
		
		theInput.RegisterListener(this, 'OnWaveC', 'WaveC');
        theInput.RegisterListener(this, 'OnGreetC', 'GreetC');
		theInput.RegisterListener(this, 'OnBowClassicC', 'BowClassicC');
		theInput.RegisterListener(this, 'OnBowNilfgaardC', 'BowNilfgaardC');
		
		theInput.RegisterListener(this, 'OnWarmUpC', 'WarmUpC');
		theInput.RegisterListener(this, 'OnThrowWoodC', 'ThrowWoodC');
		theInput.RegisterListener(this, 'OnSplashFaceC', 'SplashFaceC');

		theInput.RegisterListener(this, 'OnPetHorseC', 'PetHorseC');
		theInput.RegisterListener(this, 'OnBrushHorseC', 'BrushHorseC');
 		
		theInput.RegisterListener(this, 'OnPukeC', 'PukeC');
		theInput.RegisterListener(this, 'OnUrinateC', 'UrinateC');

		theInput.RegisterListener(this, 'OnLeanWallC', 'LeanWallC');
		theInput.RegisterListener(this, 'OnLeanWallHipsC', 'LeanWallHipsC');
        theInput.RegisterListener(this, 'OnTiredWallLeanC', 'TiredWallLeanC');
		
		theInput.RegisterListener(this, 'OnCrouchC', 'CrouchC');
		theInput.RegisterListener(this, 'OnSquatC', 'SquatC');
		theInput.RegisterListener(this, 'OnKneelC', 'KneelC');
		
		theInput.RegisterListener(this, 'OnSleepWallC', 'SleepWallC');
		theInput.RegisterListener(this, 'OnSleepGroundC', 'SleepGroundC');
		theInput.RegisterListener(this, 'OnSleepGroundDrunkC', 'SleepGroundDrunkC');

		theInput.RegisterListener(this, 'OnVanillaSitC', 'VanillaSitC');
		theInput.RegisterListener(this, 'OnSitBrokenC', 'SitBrokenC');
	    theInput.RegisterListener(this, 'OnSitGroundInjuredC', 'SitGroundInjuredC');
		theInput.RegisterListener(this, 'OnSitGroundPainC', 'SitGroundPainC');
		theInput.RegisterListener(this, 'OnSitGroundCrossLeggedC', 'SitGroundCrossLeggedC');
		theInput.RegisterListener(this, 'OnPipeGroundC', 'PipeGroundC');
		theInput.RegisterListener(this, 'OnSitGroundWarmUpC', 'SitGroundWarmUpC');
		theInput.RegisterListener(this, 'OnSitBatheC', 'SitBatheC');
		theInput.RegisterListener(this, 'OnSitPierC', 'SitPierC');
		
		theInput.RegisterListener(this, 'OnSitChairNeutralC', 'SitChairNeutralC');
		theInput.RegisterListener(this, 'OnSitChairRelaxedC', 'SitChairRelaxedC');
		theInput.RegisterListener(this, 'OnSitChairBoredC', 'SitChairBoredC');
		theInput.RegisterListener(this, 'OnSitChairDeterminedC', 'SitChairDeterminedC');
	    theInput.RegisterListener(this, 'OnSitSharpenSwordC', 'SitSharpenSwordC');
		theInput.RegisterListener(this, 'OnSitChairReadC', 'SitChairReadC');
		
		theInput.RegisterListener(this, 'OnHoeC', 'HoeC');
		theInput.RegisterListener(this, 'OnShovelC', 'ShovelC');
    	theInput.RegisterListener(this, 'OnPickAxeC', 'PickAxeC');
		theInput.RegisterListener(this, 'OnFieldWorkC', 'FieldWorkC');
		theInput.RegisterListener(this, 'OnPitchforkC', 'PitchforkC');
	    theInput.RegisterListener(this, 'OnBrushFloorC', 'BrushFloorC');
		theInput.RegisterListener(this, 'OnBroomC', 'BroomC');
		theInput.RegisterListener(this, 'OnCookC', 'CookC');
		theInput.RegisterListener(this, 'OnFishingC', 'FishingC');
		
		theInput.RegisterListener(this, 'OnPlayAardC', 'PlayAardC');
        theInput.RegisterListener(this, 'OnPlayIgniC', 'PlayIgniC');
		
		theInput.RegisterListener(this, 'OnFanC', 'FanC');

		theInput.RegisterListener(this, 'OnNoteC', 'NoteC');
		
		theInput.RegisterListener(this, 'OnSparC', 'SparC');
		
		theInput.RegisterListener(this, 'OnFluteC', 'FluteC');
		
		theInput.RegisterListener(this, 'OnStepInPooC', 'StepInPooC');
		
		
	//=======================Utility============================\\
	
	}
    event OnModifierA( action : SInputAction )
    {
        if(IsPressed(action))
		    ModifierA = true;

        if(IsReleased(action))	
            ModifierA = false;		    
    }
	event OnModifierB( action : SInputAction )
    {
        if(IsPressed(action))
		    ModifierB = true;

        if(IsReleased(action))	
            ModifierB = false;		    
    }
	event OnModifierC( action : SInputAction )
    {
        if(IsPressed(action))
		    ModifierC = true;

        if(IsReleased(action))	
            ModifierC = false;		    
    }
	event OnSwitch( action : SInputAction )
    {
        if(IsPressed(action))
            mSwitch = new cSwitch in theGame;
			
			mSwitch.Start(); 
    }
	event OnSwitch2( action : SInputAction )
    {
        if(IsPressed(action))
            mSwitch2 = new cSwitch2 in theGame;
			
			mSwitch2.Start(); 
    }
	event OnSwitch3( action : SInputAction )
    {
        if(IsPressed(action))
            mSwitch3 = new cSwitch3 in theGame;
			
			mSwitch3.Start();
	}		
	event OnDisengage( action : SInputAction )
    {
        if(IsPressed(action))
            mDisengage = new cDisengage in theGame;
			
			mDisengage.Start(); 
    }
	
	
	//=======================Neutral============================\\
	
		
		event OnNormalWalk( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.SetBehaviorVariable( 'proudWalk', 0 );	
    }
	event OnProudWalk( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.SetBehaviorVariable( 'proudWalk', 2 );    		
    }
	event OnTour( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mTour = new cTour in theGame;
			
			mTour.Start(); 
    }
	event OnScout( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_scout_02' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_squint_face');
    }
    event OnMonocular( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mMonocular = new cMonocular in theGame;
			
			mMonocular.Start();  
	}		
	event OnNoticeBoard( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mNoticeBoard = new cNoticeBoard in theGame;
			
			mNoticeBoard.Start(); 
    }
	event OnMoney( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mMoney = new cMoney in theGame;
			
			mMoney.Start(); 
    }
	event OnMoneyBag( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_counting_money_playing_with_coin_bag' );
    }
    event OnExamineSword( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mExamineSword = new cExamineSword in theGame;
			
			mExamineSword.Start(); 
    }
	event OnExamineCrossbow( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mExamineCrossbow = new cExamineCrossbow in theGame;
			
			mExamineCrossbow.Start(); 
    }
	event OnArmorFlex( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mArmorFlex = new cArmorFlex in theGame;
			
			mArmorFlex.Start(); 
    }
	event OnClothesTinker( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_standing_adjusting_and_cleaning_clothes_loop_1' );
    }
    event OnCough( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mCough = new cCough in theGame;
			
			mCough.Start(); 
    }
	event OnScratch( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_scratching_1' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_irritation_face');
    }
    event OnStretch( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_tired_02' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');
    }
    event OnClap( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    thePlayer.PlayerStartAction( 1, 'audience_in_theatre_standing_loop_02' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_impressed01_face');
	}		
	event OnHalt( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    thePlayer.PlayerStartAction( 1, 'guard_halting_geralt_loop_01' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_no_long_face');
          
    }
	event OnPayRespects( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mPayRespects = new cPayRespects in theGame;
			
			mPayRespects.Start(); 
    }
	event OnTossCoin1( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_01' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnTossCoin2( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_02' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnWave( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_05' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
           
    }
	event OnGreet( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_01' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
    event OnBowClassic( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
	       	thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_04' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
	event OnBowNilfgaard( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
	        thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_geralt_respectful_bow' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
	}	
    event OnWarmUp( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mWarmUp = new cWarmUp in theGame;
			
			mWarmUp.Start();  
	}
	event OnThrowWood( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_stand_throw_wood_to_fire_1' );
    }
    event OnSplashFace( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSplashFace = new cSplashFace in theGame;
			
			mSplashFace.Start(); 
    }
	event OnPetHorse( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_preparing_horse1' );
		if(!ModifierA && !ModifierB && !ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_eye_smile_face');
    }
	event OnBrushHorse( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mBrushHorse = new cBrushHorse in theGame;
			
			mBrushHorse.Start(); 
    }
	event OnPuke( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_work_drunk_puke' );
		if(!ModifierA && !ModifierB && !ModifierC)	
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_death_shorter_face');
            
    }
	event OnUrinate( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mUrinate = new cUrinate in theGame;
			
			mUrinate.Start(); 
    }
	event OnLeanWallHips( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mLeanWallHips = new cLeanWallHips in theGame;
			
			mLeanWallHips.Start(); 
    }
	event OnLeanWall( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mLeanWall = new cLeanWall in theGame;
			
			mLeanWall.Start(); 
    }
	event OnTiredWallLean( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mTiredWallLean = new cTiredWallLean in theGame;
			
			mTiredWallLean.Start(); 
    }
	event OnCrouch( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mCrouch = new cCrouch in theGame;
			
			mCrouch.Start(); 
    }
	event OnSquat( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSquat = new cSquat in theGame;
			
			mSquat.Start(); 
    }
	event OnKneel( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mKneel = new cKneel in theGame;
			
			mKneel.Start(); 
    }
	event OnSleepWall( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSleepWall = new cSleepWall in theGame;
			
			mSleepWall.Start(); 
    }
	event OnSleepGround( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSleepGround = new cSleepGround in theGame;
			
			mSleepGround.Start(); 
    }
	event OnSleepGroundDrunk( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSleepGroundDrunk = new cSleepGroundDrunk in theGame;
			
			mSleepGroundDrunk.Start(); 
    }
	event OnVanillaSit( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mVanillaSit = new cVanillaSit in theGame;
			
			mVanillaSit.Start(); 
    }
	event OnSitBroken( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitBroken = new cSitBroken in theGame;
			
			mSitBroken.Start(); 
    }
	event OnSitGroundInjured( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitGroundInjured = new cSitGroundInjured in theGame;
			
			mSitGroundInjured.Start(); 
    }
	event OnSitGroundPain( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitGroundPain = new cSitGroundPain in theGame;
			
			mSitGroundPain.Start(); 
    }
	event OnSitGroundCrossLegged( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitGroundCrossLegged = new cSitGroundCrossLegged in theGame;
			
			mSitGroundCrossLegged.Start(); 
    }
	event OnPipeGround( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mPipeGround = new cPipeGround in theGame;
			
			mPipeGround.Start(); 
    }
	event OnSitGroundWarmUp( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitGroundWarmUp = new cSitGroundWarmUp in theGame;
			
			mSitGroundWarmUp.Start(); 
    }
	event OnSitBathe( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitBathe = new cSitBathe in theGame;
			
			mSitBathe.Start(); 
    }
	event OnSitPier( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitPier = new cSitPier in theGame;
			
			mSitPier.Start(); 
    }
	event OnSitChairNeutral( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitChairNeutral = new cSitChairNeutral in theGame;
			
			mSitChairNeutral.Start(); 
    }
	event OnSitChairRelaxed( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitChairRelaxed = new cSitChairRelaxed in theGame;
			
			mSitChairRelaxed.Start(); 
    }
	event OnSitChairBored( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitChairBored = new cSitChairBored in theGame;
			
			mSitChairBored.Start(); 
    }			
	event OnSitChairDetermined( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    mSitChairDetermined = new cSitChairDetermined in theGame;
			
			mSitChairDetermined.Start(); 
    }
	event OnSitSharpenSword( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
             mSitSharpenSword = new cSitSharpenSword in theGame;
			
			mSitSharpenSword.Start(); 
    }
	event OnSitChairRead( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSitChairRead = new cSitChairRead in theGame;
			
			mSitChairRead.Start(); 
    }
	event OnHoe( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mHoe = new cHoe in theGame;
			
			mHoe.Start(); 
    }
	event OnShovel( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mShovel = new cShovel in theGame;
			
			mShovel.Start(); 
    }
	event OnPickAxe( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mPickAxe = new cPickAxe in theGame;
			
			mPickAxe.Start(); 
    }
	event OnFieldWork( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mFieldWork = new cFieldWork in theGame;
			
			mFieldWork.Start(); 
    }
	event OnPitchfork( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mPitchfork = new cPitchfork in theGame;
			
			mPitchfork.Start(); 
    }
	event OnBrushFloor( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mBrushFloor = new cBrushFloor in theGame;
			
			mBrushFloor.Start(); 
    }
	event OnBroom( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mBroom = new cBroom in theGame;
			
			mBroom.Start(); 
    }	
	event OnCook( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mCook = new cCook in theGame;
			
			mCook.Start(); 
    }
	event OnFishing( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mFishing = new cFishing in theGame;
			
			mFishing.Start(); 
    }	
	event OnPlayAard( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_aard_light' );
	}
	event OnPlayIgni( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_igni_light' );
	}
	event OnNote( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mNote = new cNote in theGame;
			
			mNote.Start(); 
    }
	event OnFan( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mFan = new cFan in theGame;
			
			mFan.Start(); 
    }
	event OnFlute( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mFlute = new cFlute in theGame;
			
			mFlute.Start(); 
    }
	event OnSpar( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mSpar = new cSpar in theGame;
			
			mSpar.Start(); 
    }
	event OnStepInPoo( action : SInputAction )
    {
        if(IsPressed(action) && !ModifierA && !ModifierB && !ModifierC)
            mStepInPoo = new cStepInPoo in theGame;
			
			mStepInPoo.Start(); 
    }
	
	
	//=======================MODIFIER A============================\\


	event OnNormalWalkA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.SetBehaviorVariable( 'proudWalk', 0 );	
    }
	event OnProudWalkA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.SetBehaviorVariable( 'proudWalk', 2 );    		
    }
	event OnTourA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mTour = new cTour in theGame;
			
			mTour.Start(); 
    }
	event OnScoutA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_scout_02' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_squint_face');
    }
    event OnMonocularA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mMonocular = new cMonocular in theGame;
			
			mMonocular.Start();  
	}		
	event OnNoticeBoardA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mNoticeBoard = new cNoticeBoard in theGame;
			
			mNoticeBoard.Start(); 
    }
	event OnMoneyA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mMoney = new cMoney in theGame;
			
			mMoney.Start(); 
    }
	event OnMoneyBagA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_counting_money_playing_with_coin_bag' );
    }
    event OnExamineSwordA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mExamineSword = new cExamineSword in theGame;
			
			mExamineSword.Start(); 
    }
	event OnExamineCrossbowA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mExamineCrossbow = new cExamineCrossbow in theGame;
			
			mExamineCrossbow.Start(); 
    }
	event OnArmorFlexA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mArmorFlex = new cArmorFlex in theGame;
			
			mArmorFlex.Start(); 
    }
	event OnClothesTinkerA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_standing_adjusting_and_cleaning_clothes_loop_1' );
    }
    event OnCoughA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mCough = new cCough in theGame;
			
			mCough.Start(); 
    }
	event OnScratchA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_work_scratching_1' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_irritation_face');
    }
    event OnStretchA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_work_tired_02' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');
	}
    event OnClapA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    thePlayer.PlayerStartAction( 1, 'audience_in_theatre_standing_loop_02' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_impressed01_face');
	}		
	event OnHaltA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    thePlayer.PlayerStartAction( 1, 'guard_halting_geralt_loop_01' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_no_long_face');
          
    }
	event OnPayRespectsA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mPayRespects = new cPayRespects in theGame;
			
			mPayRespects.Start(); 
    }
	event OnTossCoin1A( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_01' ); 
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnTossCoin2A( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_02' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnWaveA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_05' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');           
    }
	event OnGreetA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_01' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
    event OnBowClassicA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
	       	thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_04' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
	event OnBowNilfgaardA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
	        thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_geralt_respectful_bow' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
	}	
    event OnWarmUpA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mWarmUp = new cWarmUp in theGame;
			
			mWarmUp.Start();  
	}
	event OnThrowWoodA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'man_stand_throw_wood_to_fire_1' );
    }
    event OnSplashFaceA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            if(IsPressed(action) && ModifierA)
            mSplashFace = new cSplashFace in theGame;
			
			mSplashFace.Start(); 
    }
	event OnPetHorseA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_preparing_horse1' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_eye_smile_face');
    }
	event OnBrushHorseA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mBrushHorse = new cBrushHorse in theGame;
			
			mBrushHorse.Start(); 
    }
	event OnPukeA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    thePlayer.PlayerStartAction( 1, 'man_work_drunk_puke' );
		if(ModifierA)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_death_shorter_face');
            
    }
	event OnUrinateA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mUrinate = new cUrinate in theGame;
			
			mUrinate.Start(); 
    }
	event OnLeanWallHipsA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            if(IsPressed(action) && ModifierA)
            mLeanWallHips = new cLeanWallHips in theGame;
			
			mLeanWallHips.Start(); 
    }
	event OnLeanWallA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mLeanWall = new cLeanWall in theGame;
			
			mLeanWall.Start(); 
    }
	event OnTiredWallLeanA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mTiredWallLean = new cTiredWallLean in theGame;
			
			mTiredWallLean.Start(); 
    }
	event OnCrouchA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mCrouch = new cCrouch in theGame;
			
			mCrouch.Start(); 
    }
	event OnSquatA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSquat = new cSquat in theGame;
			
			mSquat.Start(); 
    }
	event OnKneelA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mKneel = new cKneel in theGame;
			
			mKneel.Start(); 
    }
	event OnSleepWallA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSleepWall = new cSleepWall in theGame;
			
			mSleepWall.Start(); 
    }
	event OnSleepGroundA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSleepGround = new cSleepGround in theGame;
			
			mSleepGround.Start(); 
    }
	event OnSleepGroundDrunkA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSleepGroundDrunk = new cSleepGroundDrunk in theGame;
			
			mSleepGroundDrunk.Start(); 
    }
	event OnVanillaSitA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mVanillaSit = new cVanillaSit in theGame;
			
			mVanillaSit.Start(); 
    }
	event OnSitBrokenA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitBroken = new cSitBroken in theGame;
			
			mSitBroken.Start(); 
    }
	event OnSitGroundInjuredA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitGroundInjured = new cSitGroundInjured in theGame;
			
			mSitGroundInjured.Start(); 
    }
	event OnSitGroundPainA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitGroundPain = new cSitGroundPain in theGame;
			
			mSitGroundPain.Start(); 
    }
	event OnSitGroundCrossLeggedA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitGroundCrossLegged = new cSitGroundCrossLegged in theGame;
			
			mSitGroundCrossLegged.Start(); 
    }
	event OnPipeGroundA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mPipeGround = new cPipeGround in theGame;
			
			mPipeGround.Start(); 
    }
	event OnSitGroundWarmUpA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitGroundWarmUp = new cSitGroundWarmUp in theGame;
			
			mSitGroundWarmUp.Start(); 
    }
	event OnSitBatheA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitBathe = new cSitBathe in theGame;
			
			mSitBathe.Start(); 
    }
	event OnSitPierA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitPier = new cSitPier in theGame;
			
			mSitPier.Start(); 
    }
	event OnSitChairNeutralA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitChairNeutral = new cSitChairNeutral in theGame;
			
			mSitChairNeutral.Start(); 
    }
	event OnSitChairRelaxedA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitChairRelaxed = new cSitChairRelaxed in theGame;
			
			mSitChairRelaxed.Start(); 
    }
	event OnSitChairBoredA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitChairBored = new cSitChairBored in theGame;
			
			mSitChairBored.Start(); 
    }			
    event OnSitChairDeterminedA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    mSitChairDetermined = new cSitChairDetermined in theGame;
			
			mSitChairDetermined.Start(); 
    }
	event OnSitSharpenSwordA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
             mSitSharpenSword = new cSitSharpenSword in theGame;
			
			mSitSharpenSword.Start(); 
    }
	event OnSitChairReadA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSitChairRead = new cSitChairRead in theGame;
			
			mSitChairRead.Start(); 
    }
	event OnHoeA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mHoe = new cHoe in theGame;
			
			mHoe.Start(); 
    }
	event OnShovelA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mShovel = new cShovel in theGame;
			
			mShovel.Start(); 
    }
	event OnPickAxeA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mPickAxe = new cPickAxe in theGame;
			
			mPickAxe.Start(); 
    }
	event OnFieldWorkA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mFieldWork = new cFieldWork in theGame;
			
			mFieldWork.Start(); 
    }
	event OnPitchforkA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mPitchfork = new cPitchfork in theGame;
			
			mPitchfork.Start(); 
    }
	event OnBrushFloorA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mBrushFloor = new cBrushFloor in theGame;
			
			mBrushFloor.Start(); 
    }
	event OnBroomA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mBroom = new cBroom in theGame;
			
			mBroom.Start(); 
    }	
	event OnCookA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mCook = new cCook in theGame;
			
			mCook.Start(); 
    }
	event OnFishingA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mFishing = new cFishing in theGame;
			
			mFishing.Start(); 
    }	
	event OnPlayAardA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_aard_light' );
	}
	event OnPlayIgniA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_igni_light' );
	}
	event OnNoteA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mNote = new cNote in theGame;
			
			mNote.Start(); 
    }
	event OnFanA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mFan = new cFan in theGame;
			
			mFan.Start(); 
    }
	event OnFluteA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mFlute = new cFlute in theGame;
			
			mFlute.Start(); 
    }
	event OnSparA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mSpar = new cSpar in theGame;
			
			mSpar.Start(); 
    }
	event OnStepInPooA( action : SInputAction )
    {
        if(IsPressed(action) && ModifierA)
            mStepInPoo = new cStepInPoo in theGame;
			
			mStepInPoo.Start(); 
    }
	
	
	//=======================MODIFIER B============================\\
	
	
	event OnNormalWalkB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.SetBehaviorVariable( 'proudWalk', 0 );	
    }
	event OnProudWalkB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.SetBehaviorVariable( 'proudWalk', 2 );    		
    }
	event OnTourB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mTour = new cTour in theGame;
			
			mTour.Start(); 
    }
	event OnScoutB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_scout_02' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_squint_face');
    }
    event OnMonocularB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mMonocular = new cMonocular in theGame;
			
			mMonocular.Start();  
	}		
	event OnNoticeBoardB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mNoticeBoard = new cNoticeBoard in theGame;
			
			mNoticeBoard.Start(); 
    }
	event OnMoneyB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mMoney = new cMoney in theGame;
			
			mMoney.Start(); 
    }
	event OnMoneyBagB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_counting_money_playing_with_coin_bag' );
    }
    event OnExamineSwordB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mExamineSword = new cExamineSword in theGame;
			
			mExamineSword.Start(); 
    }
	event OnExamineCrossbowB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mExamineCrossbow = new cExamineCrossbow in theGame;
			
			mExamineCrossbow.Start(); 
    }
	event OnArmorFlexB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mArmorFlex = new cArmorFlex in theGame;
			
			mArmorFlex.Start(); 
    }
	event OnClothesTinkerB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_standing_adjusting_and_cleaning_clothes_loop_1' );
    }
    event OnCoughB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mCough = new cCough in theGame;
			
			mCough.Start(); 
    }
	event OnScratchB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_work_scratching_1' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_irritation_face');
    }
    event OnStretchB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_work_tired_02' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');
	}
    event OnClapB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    thePlayer.PlayerStartAction( 1, 'audience_in_theatre_standing_loop_02' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_impressed01_face');
	}		
	event OnHaltB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    thePlayer.PlayerStartAction( 1, 'guard_halting_geralt_loop_01' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_no_long_face');
          
    }
	event OnPayRespectsB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mPayRespects = new cPayRespects in theGame;
			
			mPayRespects.Start(); 
    }
	event OnTossCoin1B( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_01' ); 
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
	}
	event OnTossCoin2B( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_02' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnWaveB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_05' );
        if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
	event OnGreetB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_01' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
    event OnBowClassicB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
	       	thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_04' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
	event OnBowNilfgaardB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
	        thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_geralt_respectful_bow' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
	}	
    event OnWarmUpB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mWarmUp = new cWarmUp in theGame;
			
			mWarmUp.Start();  
	}
	event OnThrowWoodB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'man_stand_throw_wood_to_fire_1' );
    }
    event OnSplashFaceB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            if(IsPressed(action) && ModifierB)
            mSplashFace = new cSplashFace in theGame;
			
			mSplashFace.Start(); 
    }
	event OnPetHorseB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_preparing_horse1' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_eye_smile_face');
	}
	event OnBrushHorseB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mBrushHorse = new cBrushHorse in theGame;
			
			mBrushHorse.Start(); 
    }
	event OnPukeB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    thePlayer.PlayerStartAction( 1, 'man_work_drunk_puke' );
		if(ModifierB)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_death_shorter_face');
            
    }
	event OnUrinateB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mUrinate = new cUrinate in theGame;
			
			mUrinate.Start(); 
    }
	event OnLeanWallHipsB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            if(IsPressed(action) && ModifierB)
            mLeanWallHips = new cLeanWallHips in theGame;
			
			mLeanWallHips.Start(); 
    }
	event OnLeanWallB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mLeanWall = new cLeanWall in theGame;
			
			mLeanWall.Start(); 
    }
	event OnTiredWallLeanB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mTiredWallLean = new cTiredWallLean in theGame;
			
			mTiredWallLean.Start(); 
    }
	event OnCrouchB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mCrouch = new cCrouch in theGame;
			
			mCrouch.Start(); 
    }
	event OnSquatB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSquat = new cSquat in theGame;
			
			mSquat.Start(); 
    }
	event OnKneelB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mKneel = new cKneel in theGame;
			
			mKneel.Start(); 
    }
	event OnSleepWallB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSleepWall = new cSleepWall in theGame;
			
			mSleepWall.Start(); 
    }
	event OnSleepGroundB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSleepGround = new cSleepGround in theGame;
			
			mSleepGround.Start(); 
    }
	event OnSleepGroundDrunkB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSleepGroundDrunk = new cSleepGroundDrunk in theGame;
			
			mSleepGroundDrunk.Start(); 
    }
	event OnVanillaSitB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mVanillaSit = new cVanillaSit in theGame;
			
			mVanillaSit.Start(); 
    }
	event OnSitBrokenB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitBroken = new cSitBroken in theGame;
			
			mSitBroken.Start(); 
    }
	event OnSitGroundInjuredB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitGroundInjured = new cSitGroundInjured in theGame;
			
			mSitGroundInjured.Start(); 
    }
	event OnSitGroundPainB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitGroundPain = new cSitGroundPain in theGame;
			
			mSitGroundPain.Start(); 
    }
	event OnSitGroundCrossLeggedB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitGroundCrossLegged = new cSitGroundCrossLegged in theGame;
			
			mSitGroundCrossLegged.Start(); 
    }
	event OnPipeGroundB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mPipeGround = new cPipeGround in theGame;
			
			mPipeGround.Start(); 
    }
	event OnSitGroundWarmUpB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitGroundWarmUp = new cSitGroundWarmUp in theGame;
			
			mSitGroundWarmUp.Start(); 
    }
	event OnSitBatheB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitBathe = new cSitBathe in theGame;
			
			mSitBathe.Start(); 
    }
	event OnSitPierB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitPier = new cSitPier in theGame;
			
			mSitPier.Start(); 
    }
	event OnSitChairNeutralB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitChairNeutral = new cSitChairNeutral in theGame;
			
			mSitChairNeutral.Start(); 
    }
	event OnSitChairRelaxedB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitChairRelaxed = new cSitChairRelaxed in theGame;
			
			mSitChairRelaxed.Start(); 
    }
	event OnSitChairBoredB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitChairBored = new cSitChairBored in theGame;
			
			mSitChairBored.Start(); 
    }			
    event OnSitChairDeterminedB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    mSitChairDetermined = new cSitChairDetermined in theGame;
			
			mSitChairDetermined.Start(); 
    }
	event OnSitSharpenSwordB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
             mSitSharpenSword = new cSitSharpenSword in theGame;
			
			mSitSharpenSword.Start(); 
    }
	event OnSitChairReadB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSitChairRead = new cSitChairRead in theGame;
			
			mSitChairRead.Start(); 
    }
	event OnHoeB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mHoe = new cHoe in theGame;
			
			mHoe.Start(); 
    }
	event OnShovelB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mShovel = new cShovel in theGame;
			
			mShovel.Start(); 
    }
	event OnPickAxeB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mPickAxe = new cPickAxe in theGame;
			
			mPickAxe.Start(); 
    }
	event OnFieldWorkB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mFieldWork = new cFieldWork in theGame;
			
			mFieldWork.Start(); 
    }
	event OnPitchforkB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mPitchfork = new cPitchfork in theGame;
			
			mPitchfork.Start(); 
    }
	event OnBrushFloorB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mBrushFloor = new cBrushFloor in theGame;
			
			mBrushFloor.Start(); 
    }
	event OnBroomB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mBroom = new cBroom in theGame;
			
			mBroom.Start(); 
    }	
	event OnCookB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mCook = new cCook in theGame;
			
			mCook.Start(); 
    }
	event OnFishingB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mFishing = new cFishing in theGame;
			
			mFishing.Start(); 
    }	
	event OnPlayAardB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_aard_light' );
	}
	event OnPlayIgniB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_igni_light' );
	}
	event OnNoteB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mNote = new cNote in theGame;
			
			mNote.Start(); 
    }
	event OnFanB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mFan = new cFan in theGame;
			
			mFan.Start(); 
    }
	event OnFluteB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mFlute = new cFlute in theGame;
			
			mFlute.Start(); 
    }
	event OnSparB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mSpar = new cSpar in theGame;
			
			mSpar.Start(); 
    }
	event OnStepInPooB( action : SInputAction )
    {
        if(IsPressed(action) && ModifierB)
            mStepInPoo = new cStepInPoo in theGame;
			
			mStepInPoo.Start(); 
    }
	
	
	//=======================ModifierC============================\\
	
	
	event OnNormalWalkC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.SetBehaviorVariable( 'proudWalk', 0 );	
    }
	event OnProudWalkC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.SetBehaviorVariable( 'proudWalk', 2 );    		
    }
	event OnTourC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mTour = new cTour in theGame;
			
			mTour.Start(); 
    }
	event OnScoutC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_scout_02' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_squint_face');
    }
    event OnMonocularC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mMonocular = new cMonocular in theGame;
			
			mMonocular.Start();  
	}		
	event OnNoticeBoardC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mNoticeBoard = new cNoticeBoard in theGame;
			
			mNoticeBoard.Start(); 
    }
	event OnMoneyC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mMoney = new cMoney in theGame;
			
			mMoney.Start(); 
    }
	event OnMoneyBagC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_counting_money_playing_with_coin_bag' );
    }
    event OnExamineSwordC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mExamineSword = new cExamineSword in theGame;
			
			mExamineSword.Start(); 
    }
	event OnExamineCrossbowC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mExamineCrossbow = new cExamineCrossbow in theGame;
			
			mExamineCrossbow.Start(); 
    }
	event OnArmorFlexC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mArmorFlex = new cArmorFlex in theGame;
			
			mArmorFlex.Start(); 
    }
	event OnClothesTinkerC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_standing_adjusting_and_cleaning_clothes_loop_1' );
    }
    event OnCoughC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mCough = new cCough in theGame;
			
			mCough.Start(); 
    }
	event OnScratchC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_scratching_1' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_irritation_face');
    }
    event OnStretchC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_tired_02' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');
    }
    event OnClapC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    thePlayer.PlayerStartAction( 1, 'audience_in_theatre_standing_loop_02' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_impressed01_face');
	}		
	event OnHaltC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    thePlayer.PlayerStartAction( 1, 'guard_halting_geralt_loop_01' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_no_long_face');
    }
	event OnPayRespectsC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mPayRespects = new cPayRespects in theGame;
			
			mPayRespects.Start(); 
    }
	event OnTossCoin1C( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_01' ); 
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnTossCoin2C( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_tossing_coin_02' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_approval_face');
    }
	event OnWaveC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_05' );
        if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
	event OnGreetC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_01' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
    }
    event OnBowClassicC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
	       	thePlayer.PlayerStartAction( 1, 'man_work_greeting_with_hand_gesture_04' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');	            
    }
	event OnBowNilfgaardC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
	        thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_geralt_respectful_bow' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_smile_face');
	}	
    event OnWarmUpC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mWarmUp = new cWarmUp in theGame;
			
			mWarmUp.Start();  
	}
	event OnThrowWoodC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'man_stand_throw_wood_to_fire_1' );
    }
    event OnSplashFaceC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            if(IsPressed(action) && ModifierC)
            mSplashFace = new cSplashFace in theGame;
			
			mSplashFace.Start(); 
    }
	event OnPetHorseC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            thePlayer.PlayerStartAction( 1, 'high_standing_determined_gesture_preparing_horse1' );
		if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_eye_smile_face');
	}
	event OnBrushHorseC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mBrushHorse = new cBrushHorse in theGame;
			
			mBrushHorse.Start(); 
    }
	event OnPukeC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_work_drunk_puke' );
        if(ModifierC)
			((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_death_shorter_face');
    }
	event OnUrinateC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mUrinate = new cUrinate in theGame;
			
			mUrinate.Start(); 
    }
	event OnLeanWallHipsC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            if(IsPressed(action) && ModifierC)
            mLeanWallHips = new cLeanWallHips in theGame;
			
			mLeanWallHips.Start(); 
    }
	event OnLeanWallC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mLeanWall = new cLeanWall in theGame;
			
			mLeanWall.Start(); 
    }
	event OnTiredWallLeanC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mTiredWallLean = new cTiredWallLean in theGame;
			
			mTiredWallLean.Start(); 
    }
	event OnCrouchC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mCrouch = new cCrouch in theGame;
			
			mCrouch.Start(); 
    }
	event OnSquatC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSquat = new cSquat in theGame;
			
			mSquat.Start(); 
    }
	event OnKneelC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mKneel = new cKneel in theGame;
			
			mKneel.Start(); 
    }
	event OnSleepWallC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSleepWall = new cSleepWall in theGame;
			
			mSleepWall.Start(); 
    }
	event OnSleepGroundC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSleepGround = new cSleepGround in theGame;
			
			mSleepGround.Start(); 
    }
	event OnSleepGroundDrunkC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSleepGroundDrunk = new cSleepGroundDrunk in theGame;
			
			mSleepGroundDrunk.Start(); 
    }
	event OnVanillaSitC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mVanillaSit = new cVanillaSit in theGame;
			
			mVanillaSit.Start(); 
    }
	event OnSitBrokenC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitBroken = new cSitBroken in theGame;
			
			mSitBroken.Start(); 
    }
	event OnSitGroundInjuredC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitGroundInjured = new cSitGroundInjured in theGame;
			
			mSitGroundInjured.Start(); 
    }
	event OnSitGroundPainC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitGroundPain = new cSitGroundPain in theGame;
			
			mSitGroundPain.Start(); 
    }
	event OnSitGroundCrossLeggedC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitGroundCrossLegged = new cSitGroundCrossLegged in theGame;
			
			mSitGroundCrossLegged.Start(); 
    }
	event OnPipeGroundC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mPipeGround = new cPipeGround in theGame;
			
			mPipeGround.Start(); 
    }
	event OnSitGroundWarmUpC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitGroundWarmUp = new cSitGroundWarmUp in theGame;
			
			mSitGroundWarmUp.Start(); 
    }
	event OnSitBatheC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitBathe = new cSitBathe in theGame;
			
			mSitBathe.Start(); 
    }
	event OnSitPierC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitPier = new cSitPier in theGame;
			
			mSitPier.Start(); 
    }
	event OnSitChairNeutralC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitChairNeutral = new cSitChairNeutral in theGame;
			
			mSitChairNeutral.Start(); 
    }
	event OnSitChairRelaxedC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitChairRelaxed = new cSitChairRelaxed in theGame;
			
			mSitChairRelaxed.Start(); 
    }
	event OnSitChairBoredC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitChairBored = new cSitChairBored in theGame;
			
			mSitChairBored.Start(); 
    }			
    event OnSitChairDeterminedC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    mSitChairDetermined = new cSitChairDetermined in theGame;
			
			mSitChairDetermined.Start(); 
    }
	event OnSitSharpenSwordC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
             mSitSharpenSword = new cSitSharpenSword in theGame;
			
			mSitSharpenSword.Start(); 
    }
	event OnSitChairReadC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSitChairRead = new cSitChairRead in theGame;
			
			mSitChairRead.Start(); 
    }
	event OnHoeC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mHoe = new cHoe in theGame;
			
			mHoe.Start(); 
    }
	event OnShovelC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mShovel = new cShovel in theGame;
			
			mShovel.Start(); 
    }
	event OnPickAxeC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mPickAxe = new cPickAxe in theGame;
			
			mPickAxe.Start(); 
    }
	event OnFieldWorkC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mFieldWork = new cFieldWork in theGame;
			
			mFieldWork.Start(); 
    }
	event OnPitchforkC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mPitchfork = new cPitchfork in theGame;
			
			mPitchfork.Start(); 
    }
	event OnBrushFloorC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mBrushFloor = new cBrushFloor in theGame;
			
			mBrushFloor.Start(); 
    }
	event OnBroomC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mBroom = new cBroom in theGame;
			
			mBroom.Start(); 
    }	
	event OnCookC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mCook = new cCook in theGame;
			
			mCook.Start(); 
    }
	event OnFishingC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mFishing = new cFishing in theGame;
			
			mFishing.Start(); 
    }	
	event OnPlayAardC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_aard_light' );
	}
	event OnPlayIgniC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
		    thePlayer.PlayerStartAction( 1, 'man_ger_idle_sign_igni_light' );
	}
	event OnNoteC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mNote = new cNote in theGame;
			
			mNote.Start(); 
    }
	event OnFanC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mFan = new cFan in theGame;
			
			mFan.Start(); 
    }
	event OnFluteC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mFlute = new cFlute in theGame;
			
			mFlute.Start(); 
    }
	event OnSparC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mSpar = new cSpar in theGame;
			
			mSpar.Start(); 
    }
	event OnStepInPooC( action : SInputAction )
    {
        if(IsPressed(action) && ModifierC)
            mStepInPoo = new cStepInPoo in theGame;
			
			mStepInPoo.Start(); 
    }
}

////////////////////////////////////////////////////////////////MONOCULAR\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cMonocular extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>; 
	
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
	function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_spyglass_start';
		stopAnimation = 'man_work_spyglass_stop';
		
		loopAnimations.PushBack('man_work_spyglass_01');
		loopAnimations.PushBack('man_work_spyglass_01');
		loopAnimations.PushBack('man_work_spyglass_01');
		
		loopFace.PushBack('geralt_neutral_gesture_squint_face');
								
		this.PushState('StartMonocular');			
	}
}	
	
	
state StartMonocular in cMonocular {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopMonocular');	
	}
}

state LoopMonocular in cMonocular {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
		
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);				
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopMonocular');
				}
			}
        }
	}	    
}
	
state StopMonocular in cMonocular {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////WarmUp\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cWarmUp extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'work_stand_chauffer_start';
		stopAnimation = 'work_stand_chauffer_stop';
		
		loopAnimations.PushBack('work_stand_chauffer_01');
		loopAnimations.PushBack('work_stand_chauffer_02');
		loopAnimations.PushBack('work_stand_chauffer_03');
		loopAnimations.PushBack('work_stand_chauffer_04');
		loopAnimations.PushBack('work_stand_chauffer_01');
		loopAnimations.PushBack('work_stand_chauffer_02');
		loopAnimations.PushBack('work_stand_chauffer_03');
		loopAnimations.PushBack('work_stand_chauffer_04');
		loopAnimations.PushBack('work_stand_chauffer_01');
		loopAnimations.PushBack('work_stand_chauffer_02');
		loopAnimations.PushBack('work_stand_chauffer_03');
		loopAnimations.PushBack('work_stand_chauffer_04');
								
		this.PushState('StartWarmUp');			
	}
}	
	
	
state StartWarmUp in cWarmUp {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopWarmUp');	
	}
}

state LoopWarmUp in cWarmUp {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
		
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopWarmUp');
			
			}
        }
	}	    
}

state StopWarmUp in cWarmUp {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////NoticeBoard\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cNoticeBoard extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_standing_reading_noticeboard_start';
		stopAnimation = 'man_work_standing_reading_noticeboard_stop';
		
		loopAnimations.PushBack('man_work_standing_reading_noticeboard_loop_01');
		loopAnimations.PushBack('man_work_standing_reading_noticeboard_loop_01');
		loopAnimations.PushBack('man_work_standing_reading_noticeboard_loop_01');
		loopAnimations.PushBack('man_work_standing_reading_noticeboard_loop_01');
		loopAnimations.PushBack('man_work_standing_reading_noticeboard_loop_01');
		loopAnimations.PushBack('man_work_standing_reading_noticeboard_loop_01');
								
								
		this.PushState('StartNoticeBoard');			
	}
}	
	
	
state StartNoticeBoard in cNoticeBoard {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopNoticeBoard');	
	}
}

state LoopNoticeBoard in cNoticeBoard {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
		
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopNoticeBoard');
			
			}
        }
	}	    
}

state StopNoticeBoard in cNoticeBoard {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Urinate\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cUrinate extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimation 						: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_peeing_start';
		stopAnimation = 'man_peeing_end';
		loopAnimation = 'man_peeing_loop';
								
		this.PushState('StartUrinate');			
	}
}	
	
	
state StartUrinate in cUrinate {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopUrinate');	
	}
}

state LoopUrinate in cUrinate {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_thankful_face');
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation);
			
		parent.PushState('StopUrinate');	
	}
}

state StopUrinate in cUrinate {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Money\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cMoney extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_counting_money_start';
		stopAnimation = 'man_counting_money_end';
		
		loopAnimations.PushBack('man_counting_money_loop');
		loopAnimations.PushBack('man_counting_money_loop');
		loopAnimations.PushBack('man_counting_money_loop');
		loopAnimations.PushBack('man_counting_money_loop');
		loopAnimations.PushBack('man_counting_money_loop');
		loopAnimations.PushBack('man_counting_money_loop');
								
		this.PushState('StartMoney');			
	}
}	
	
	
state StartMoney in cMoney {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopMoney');	
	}
}

state LoopMoney in cMoney {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopMoney');
			
			}
        }
	}	    
}

state StopMoney in cMoney {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////Note\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cNote extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_writing_stand_start';
		stopAnimation = 'man_work_writing_stand_stop';
		
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_02');
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_01');
		loopAnimations.PushBack('man_work_writing_stand_02');
		
		loopFace.PushBack('geralt_neutral_gesture_approval_face');
		
		this.PushState('StartNote');			
	}
}	
	
	
state StartNote in cNote {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopNote');	
	}
}

state LoopNote in cNote {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
		 parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			 
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopNote');
				
			}
        }
	}	    
}

state StopNote in cNote {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Spar\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSpar extends W3UsableItem {

	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
		
		stopAnimation = '';
		
		loopAnimations.PushBack('work_training_sword_01');
		loopAnimations.PushBack('work_training_sword_02');
		loopAnimations.PushBack('work_training_sword_03');
		loopAnimations.PushBack('work_training_sword_04');
		loopAnimations.PushBack('work_training_sword_05');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
		
		this.PushState('LoopSpar');			
	}
}	
	
state LoopSpar in cSpar {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();
		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSpar');
				}
			}
        }
	}	    
}

state StopSpar in cSpar {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
		 	
    }	    
}

////////////////////////////////////////////////////////////////SitPier\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSitPier extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sitting_pier_legs_hanging_start';
		stopAnimation = 'man_work_sitting_pier_legs_hanging_stop';
		
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_01');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_02');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_03');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_04');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_05');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_01');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_02');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_03');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_04');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_05');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_01');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_02');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_03');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_04');
		loopAnimations.PushBack('man_work_sitting_pier_legs_hanging_loop_05');
								
		this.PushState('StartSitPier');			
	}
}	
	
	
state StartSitPier in cSitPier {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitPier');	
	}
}

state LoopSitPier in cSitPier {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitPier');
			
			}
        }
	}	    
}

state StopSitPier in cSitPier {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////Crouch\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cCrouch extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
    var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;	 
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_crouch_start';
		stopAnimation = 'man_work_crouch_stop';
		loopAnimations.PushBack('man_work_crouch_01');
		loopAnimations.PushBack('man_work_crouch_02');
		loopAnimations.PushBack('man_work_crouch_03');
		loopAnimations.PushBack('man_work_crouch_01');
		loopAnimations.PushBack('man_work_crouch_02');
		loopAnimations.PushBack('man_work_crouch_03');
		loopAnimations.PushBack('man_work_crouch_01');
		loopAnimations.PushBack('man_work_crouch_02');
		loopAnimations.PushBack('man_work_crouch_03');
							
		this.PushState('StartCrouch');			
	}
}	
	
	
state StartCrouch in cCrouch {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopCrouch');	
	}
}

state LoopCrouch in cCrouch {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopCrouch');
			
			}
        }
	}	    
}
 
state StopCrouch in cCrouch {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////LeanWall\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cLeanWall extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_leaning_against_wall_cross_legged_start';
		stopAnimation = 'man_leaning_against_wall_cross_legged_loop_end';
		
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_2');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_1');
		loopAnimations.PushBack('man_leaning_against_wall_cross_legged_loop_2');
		 
		this.PushState('StartLeanWall');			
	}
}	
	
state StartLeanWall in cLeanWall {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopLeanWall');	
	}
}

state LoopLeanWall in cLeanWall {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopLeanWall');
			
			}
        }
	}	    
}

state StopLeanWall in cLeanWall {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////VanillaSit\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cVanillaSit extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'vanilla_sitting_on_ground_start';
		stopAnimation = 'vanilla_sitting_on_ground_end';
		
		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
 		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
 		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
 		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
 		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
 		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
 		loopAnimations.PushBack('vanilla_sitting_on_ground_loop');
								
		this.PushState('StartVanillaSit');			
	}
}	
	
	
state StartVanillaSit in cVanillaSit {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopVanillaSit');	
	}
}

state LoopVanillaSit in cVanillaSit {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopVanillaSit');
			
			}
        }
	}	    
}

state StopVanillaSit in cVanillaSit {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SleepWall\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSleepWall extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;  
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sleep_ground_leaning_wall_start';
		stopAnimation = 'man_work_sleep_ground_leaning_wall_stop';
		
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_leaning_wall_loop_1');
		
		loopFace.PushBack('sleeping_anim_combined_face');
		
		this.PushState('StartSleepWall');			
	}
}	
	
	
state StartSleepWall in cSleepWall {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();	
        ((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSleepWall');	
	}
}

state LoopSleepWall in cSleepWall {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSleepWall');
				}
			}
        }
	}	    
}

state StopSleepWall in cSleepWall {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_vodka_face');		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SleepGround\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSleepGround extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>; 
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sleep_ground_start';
		stopAnimation = 'man_work_sleep_ground_stop';
		
		loopAnimations.PushBack('man_work_sleep_ground_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_loop_2');
		loopAnimations.PushBack('man_work_sleep_ground_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_loop_2');
		loopAnimations.PushBack('man_work_sleep_ground_loop_1');
		loopAnimations.PushBack('man_work_sleep_ground_loop_2');
		
		loopFace.PushBack('sleeping_anim_combined_face');
								
		this.PushState('StartSleepGround');			
	}
}	
	
	
state StartSleepGround in cSleepGround {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSleepGround');	
	}
}

state LoopSleepGround in cSleepGround {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSleepGround');
				}
			}
        }
	}	    
}

state StopSleepGround in cSleepGround {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_vodka_face');
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////PipeGround\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cPipeGround extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var lightAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_standup_ground_pipe';
		stopAnimation = 'man_work_ground_standup_pipe';
		lightAnimation = 'man_work_sit_ground_pipe_01';
		
		loopAnimations.PushBack('man_work_sit_ground_pipe_03');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_03');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_03');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_03');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_03');
		loopAnimations.PushBack('man_work_sit_ground_pipe_04');
		loopAnimations.PushBack('man_work_sit_ground_pipe_03');
		loopAnimations.PushBack('man_work_sit_ground_pipe_02');
		
		loopFace.PushBack('');
		
		this.PushState('StartPipeGround');			
	}
}	
	
	
state StartPipeGround in cPipeGround {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_confidence_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LightPipeGround');	
	}
}

state LightPipeGround in cPipeGround {

	event OnEnterState(prevStateName : name) {	
		
		PlayLightAnimation();		
	}
	
	entry function PlayLightAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.lightAnimation);					
		parent.PushState('LoopPipeGround');	
	}
}

state LoopPipeGround in cPipeGround {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopPipeGround');
			
			}
        }
	}	    
}

state StopPipeGround in cPipeGround {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitBroken\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSitBroken extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_hopeless_broken_sitting_and_resting_start';
		stopAnimation = 'man_work_hopeless_broken_sitting_and_resting_stop';
		
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_1');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_2');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_3');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_4');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_1');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_2');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_3');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_4');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_1');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_2');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_3');
		loopAnimations.PushBack('man_work_hopeless_broken_sitting_and_resting_4');
					
		loopFace.PushBack('geralt_reaction_anguish_face');
		loopFace.PushBack('geralt_reaction_anguish_face');
		loopFace.PushBack('geralt_reaction_anguish_face');
						
		this.PushState('StartSitBroken');			
	}
}	
	
	
state StartSitBroken in cSitBroken {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_pose_eye_darts_tired_sleepy_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitBroken');	
	}
}

state LoopSitBroken in cSitBroken {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitBroken');
				}
			}
        }
	}	    
}

state StopSitBroken in cSitBroken {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Disengage\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cDisengage extends W3UsableItem {

	var disengageAnimation						: name;

	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		disengageAnimation = '';
								
		this.PushState('StartDisengage');
	}
}
 
state StartDisengage in cDisengage {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.disengageAnimation);
	}
}


////////////////////////////////////////////////////////////////ExamineSword\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cExamineSword extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimation 						: name;
	
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'inventory_sword_check2';
		stopAnimation = 'inventory_heavy_melee_check1';
		loopAnimation = 'inventory_sword_check2';
								
		this.PushState('StartExamineSword');			
	}
}	
	
	
state StartExamineSword in cExamineSword {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('inventory_sword_idle_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('StopExamineSword');	
	}
}

state LoopExamineSword in cExamineSword {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation);
			
		parent.PushState('StopExamineSword');	
    }	    
}


state StopExamineSword in cExamineSword {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////ExamineCrossbow\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cExamineCrossbow extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimation 						: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'inventory_unsheathe_crossbow';
		stopAnimation = 'inventory_sheathe_crossbow';
		loopAnimation = 'inventory_crossbow_check1';
								
		this.PushState('StartExamineCrossbow');			
	}
}	
	
	
state StartExamineCrossbow in cExamineCrossbow {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();	
		((CActor)thePlayer).PlayMimicAnimationAsync('inventory_noequipment_idle_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopExamineCrossbow');	
	}
}

state LoopExamineCrossbow in cExamineCrossbow {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();	
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation);
			
		parent.PushState('StopExamineCrossbow');	
    }	    
}

state StopExamineCrossbow in cExamineCrossbow {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////ArmorFlex\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cArmorFlex extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimation1 						: name;
	var loopAnimation2 						: name;
	var loopAnimation3 						: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'inventory_noequipment_gloves';
		stopAnimation = 'inventory_noequipment_armor_flex2';
		loopAnimation1 = 'inventory_noequipment_pants';
		loopAnimation2 = 'inventory_noequipment_boots';
		loopAnimation3 = 'inventory_noequipment_armor_flex1';
								
		this.PushState('StartArmorFlex');			
	}
}	
	
	
state StartArmorFlex in cArmorFlex {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopArmorFlex');	
	}
}

state LoopArmorFlex in cArmorFlex {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('inventory_noequipment_idle_face');
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation1);
			
		parent.PushState('LoopArmorFlex2');	
    }	    
}

state LoopArmorFlex2 in cArmorFlex {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation2();	
		((CActor)thePlayer).PlayMimicAnimationAsync('inventory_noequipment_idle_face');
	}	
	
	entry function PlayLoopAnimation2() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation2);
			
		parent.PushState('StopArmorFlex');	
    }	    
}

state LoopArmorFlex3 in cArmorFlex {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation3();		
	}	
	
	entry function PlayLoopAnimation3() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation3);
			
		parent.PushState('StopArmorFlex');	
    }	    
}

state StopArmorFlex in cArmorFlex {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Cough\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cCough extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimation 						: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'geralt_coughing_mildly_start';
		stopAnimation = 'geralt_coughing_mildly_stop';
		loopAnimation = 'ep1_geralt_coughing_mildly_loop_01_recompress';
								
		this.PushState('StartCough');			
	}
}	
	
	
state StartCough in cCough {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('gameplay_focused_anim_combined_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopCough');	
	}
}

state LoopCough in cCough {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation);
			
		parent.PushState('StopCough');	
    }	    
}

state StopCough in cCough {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////StepInPoo\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cStepInPoo extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimation 						: name;
		
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_stepping_into_poop_start';
		stopAnimation = 'man_stepping_into_poop_end';
		loopAnimation = 'man_stepping_into_poop_loop';
				
		this.PushState('StartStepInPoo');			
	}
}	
	
	
state StartStepInPoo in cStepInPoo {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopStepInPoo');	
	}
}

state LoopStepInPoo in cStepInPoo {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('gameplay_bursting_anger_combined_face');
	}	
	
	entry function PlayLoopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimation);
			
		parent.PushState('StopStepInPoo');	
    }	    
}

state StopStepInPoo in cStepInPoo {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////SitChairDetermined\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSitChairDetermined extends W3UsableItem {

	var turnAnimation						: name;
	var startAnimation						: name;
	var stophighAnimation 						: name;
	var stoplowAnimation 						: name;
	var hightolowAnimation						: name;
	var lowtohighAnimation						: name;
	var loophighAnimations						: array<name>;
	var looplowAnimations						: array<name>;
	var currAnimationUsed					: name;
	
    event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		turnAnimation = 'geralt_turn_180_l';
		startAnimation = 'high_standing_determined_to_high_sitting_determined';
		stophighAnimation = 'high_sitting_determined_to_high_standing_determined';
		stoplowAnimation = ('low_sitting_happy_to_high_standing_determined');
		hightolowAnimation = ('high_sitting_determined_to_low_sitting_happy');
		lowtohighAnimation = ('low_sitting_happy_to_high_sitting_determined');
		
		looplowAnimations.PushBack('low_sitting_happy_idle');
		looplowAnimations.PushBack('low_sitting_happy_idle');
        looplowAnimations.PushBack('low_sitting_happy_idle');
        looplowAnimations.PushBack('low_sitting_happy_idle');
        looplowAnimations.PushBack('low_sitting_happy_idle');
		looplowAnimations.PushBack('low_sitting_happy_idle');
		looplowAnimations.PushBack('low_sitting_happy_idle');
		looplowAnimations.PushBack('low_sitting_happy_idle');
		
		loophighAnimations.PushBack('high_sitting_determined_idle');
		loophighAnimations.PushBack('high_sitting_determined_idle');
		loophighAnimations.PushBack('high_sitting_determined_idle');
		loophighAnimations.PushBack('high_sitting_determined_idle');
		loophighAnimations.PushBack('high_sitting_determined_idle');
		loophighAnimations.PushBack('high_sitting_determined_idle');
		loophighAnimations.PushBack('high_sitting_determined_idle');
		
		this.PushState('Turn180');			
	}
}	
	
state Turn180 in cSitChairDetermined {
	
	event OnEnterState(prevStateName : name) {	
		
		PlayTurnAnimation();
       
	}
	
	entry function PlayTurnAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.turnAnimation);					
		parent.PushState('StartSitChairDetermined');	
	}
}
	
state StartSitChairDetermined in cSitChairDetermined {

	var playerheading                       : float; 
    var playerpos	                        : Vector;
	
	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		
		playerheading = thePlayer.GetHeading();
        playerpos = thePlayer.GetWorldPosition();
        thePlayer.Teleport(playerpos + VecFromHeading(playerheading) * -0.3);
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopHigh');	
	}
}

state LoopHigh in cSitChairDetermined {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopHighAnimation();		
	}	
	
	entry function PlayLoopHighAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loophighAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loophighAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loophighAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopHigh');
		}
		
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('HighToLow');
			
			}
        }
	}	    
}

state HighToLow in cSitChairDetermined {

	event OnEnterState(prevStateName : name) {
		
		PlayHighToLowAnimation();
	}	
	
	entry function PlayHighToLowAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.hightolowAnimation);
		
		parent.GotoState('LoopLow');
	}
}

state LoopLow in cSitChairDetermined {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopLowAnimation();		
	}	
	
	entry function PlayLoopLowAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.looplowAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.looplowAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.looplowAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopLow');
		}
		
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('LowToHigh');
			
			}
        }
	}	    
}

state LowToHigh in cSitChairDetermined {

	event OnEnterState(prevStateName : name) {
		
		PlayLowToHighAnimation();
	}	
	
	entry function PlayLowToHighAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.lowtohighAnimation);
		
		parent.GotoState('LoopHigh');
	}
}

state StopHigh in cSitChairDetermined {

	event OnEnterState(prevStateName : name) {
		
		PlayStopHighAnimation();
	}	
	
	entry function PlayStopHighAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stophighAnimation);
	}
}

state StopLow in cSitChairDetermined {

	event OnEnterState(prevStateName : name) {
		
		PlayStopLowAnimation();
	}	
	
	entry function PlayStopLowAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stoplowAnimation);
	}
}

////////////////////////////////////////////////////////////////TiredWallLean\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cTiredWallLean extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;	
	var currFaceUsed						: name;
	var loopFace					  		: array<name>; 
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_drunk_wall_start';
		stopAnimation = 'man_work_drunk_wall_stop';
		
		loopAnimations.PushBack('man_work_drunk_wall_loop');
		loopAnimations.PushBack('man_work_drunk_wall_loop');
        loopAnimations.PushBack('man_work_drunk_wall_loop');
		
		loopFace.PushBack('geralt_neutral_gesture_death_shorter_face');
		
		this.PushState('StartTiredWallLean');			
	}
}	
	
	
state StartTiredWallLean in cTiredWallLean {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopTiredWallLean');	
	}
}

state LoopTiredWallLean in cTiredWallLean {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
		
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
						
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopTiredWallLean');
				}
			}
        }
	}	    
}

state StopTiredWallLean in cTiredWallLean {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////SplashFace\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSplashFace extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_standing_splashing_his_face_start';
		stopAnimation = 'man_work_standing_splashing_his_face_stop';
		
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_01');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_02');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_03');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_01');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_02');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_03');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_01');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_02');
		loopAnimations.PushBack('man_work_standing_splashing_his_face_loop_03');
		
		loopFace.PushBack('geralt_neutral_gesture_vodka_face');
								
		this.PushState('StartSplashFace');			
	}
}	
	
	
state StartSplashFace in cSplashFace {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSplashFace');	
	}
}

state LoopSplashFace in cSplashFace {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
						
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSplashFace');
				}	
			}
        }
	}	    
}

state StopSplashFace in cSplashFace {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Tour\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cTour extends W3UsableItem {

	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
    var loopFace					  		: array<name>; 
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		stopAnimation = '';
		
		loopAnimations.PushBack('man_work_sightseeing_loop_1');
		loopAnimations.PushBack('man_work_sightseeing_loop_2');
		loopAnimations.PushBack('man_work_sightseeing_loop_3');
		loopAnimations.PushBack('man_work_sightseeing_loop_4');
		
		loopFace.PushBack('geralt_reaction_admiration_face');
									
		this.PushState('LoopTour');			
	}
}	
	
state LoopTour in cTour {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
						
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);		
	
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopTour');
				}
			}
        }
	}	    
}

state StopTour in cTour {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Squat\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSquat extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sit_squat_start';
		stopAnimation = 'man_work_sit_squat_stop';
		
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
		loopAnimations.PushBack('man_work_sit_squat_01');
								
		this.PushState('StartSquat');			
	}
}	
	
state StartSquat in cSquat {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSquat');	
	}
}

state LoopSquat in cSquat {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSquat');
			
			}
        }
	}	    
}

state StopSquat in cSquat {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////Kneel\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cKneel extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'work_kneeling_start';
		stopAnimation = 'work_kneeling_end';
		
		loopAnimations.PushBack('work_kneeling_loop');
		loopAnimations.PushBack('work_kneeling_loop');
		loopAnimations.PushBack('work_kneeling_loop');
		loopAnimations.PushBack('work_kneeling_loop');
		loopAnimations.PushBack('work_kneeling_loop');
		loopAnimations.PushBack('work_kneeling_loop');
		loopAnimations.PushBack('work_kneeling_loop');
								
		this.PushState('StartKneel');			
	}
}	
	
state StartKneel in cKneel {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopKneel');	
	}
}

state LoopKneel in cKneel {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopKneel');
			
			}
        }
	}	    
}

state StopKneel in cKneel {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}



////////////////////////////////////////////////////////////////Switch\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSwitch extends W3UsableItem {

	var switchAnimation						: name;

	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		switchAnimation = '';
								
		this.PushState('StartSwitch');
	}
}
 
state StartSwitch in cSwitch {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.switchAnimation);
	}
}


////////////////////////////////////////////////////////////////Switch2\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSwitch2 extends W3UsableItem {

	var switch2Animation						: name;

	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		switch2Animation = '';
								
		this.PushState('StartSwitch2');
	}
}
 
state StartSwitch2 in cSwitch2 {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.switch2Animation);
	}
}

////////////////////////////////////////////////////////////////Switch3\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSwitch3 extends W3UsableItem {

	var switch3Animation						: name;

	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		switch3Animation = '';
								
		this.PushState('StartSwitch3');
	}
}
 
state StartSwitch3 in cSwitch3 {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.switch3Animation);
	}
}

////////////////////////////////////////////////////////////////SitChairBored\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSitChairBored extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var turnAnimation                       : name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		turnAnimation = 'geralt_turn_180_l';
		startAnimation = 'high_standing_determined_to_high_sitting_bored';
		stopAnimation = 'high_sitting_bored_to_high_standing_determined';
		
		loopAnimations.PushBack('high_sitting_bored_idle');
		loopAnimations.PushBack('high_sitting_bored_idle');
		loopAnimations.PushBack('high_sitting_bored_idle');
		loopAnimations.PushBack('high_sitting_bored_idle');
		loopAnimations.PushBack('high_sitting_bored_idle');
		loopAnimations.PushBack('high_sitting_bored_idle');
		loopAnimations.PushBack('high_sitting_bored_idle');
								
		this.PushState('Turn180');			
	}
}	
	
	
state Turn180 in cSitChairBored {

	event OnEnterState(prevStateName : name) {	
		
		PlayTurnAnimation();		
	}
	
	entry function PlayTurnAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.turnAnimation);					
		parent.PushState('StartSitChairBored');	
	}
}

state StartSitChairBored in cSitChairBored {

	var playerheading                       : float; 
    var playerpos	                        : Vector;
	
	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		
		playerheading = thePlayer.GetHeading();
        playerpos = thePlayer.GetWorldPosition();
        thePlayer.Teleport(playerpos + VecFromHeading(playerheading) * -0.4);		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitChairBored');	
	}
}

state LoopSitChairBored in cSitChairBored {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitChairBored');
			
			}
        }
	}	    
}

state StopSitChairBored in cSitChairBored {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////SitChairNeutral\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSitChairNeutral extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var turnAnimation                       : name;
	
	var startCrossAnimation                 : name;
	var stopCrossAnimation                  : name;
	var loopCrossAnimations		     		: array<name>;
	
	var startSleepAnimation                  : name;
	var stopSleepAnimation                   : name;
	var loopSleepAnimations		     	    : array<name>;
	
    var startPipeAnimation                  : name;
	var stopPipeAnimation                   : name;
	var loopPipeAnimations		     	    : array<name>;
	
	var startLeanAnimation                  : name;
	var stopLeanAnimation                   : name;
	var LeantoSitAnimation                  : name;
	var loopLeanAnimations		     	    : array<name>;
	
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	

	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sit_chair_start';
		stopAnimation = 'man_work_sit_chair_stop';
		turnAnimation = 'geralt_turn_180_l';
		
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		loopAnimations.PushBack('man_work_sit_chair_01');
		
		startCrossAnimation = 'man_dress_work_sit_chair_crosshands_start';
		stopCrossAnimation = 'man_dress_work_sit_chair_crosshands_stop';
		
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_01');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_02');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_03');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_04');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_05');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_01');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_02');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_03');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_04');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_05');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_01');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_02');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_03');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_04');
		loopCrossAnimations.PushBack('man_dress_work_sit_chair_crosshands_05');
		
		startPipeAnimation = 'man_work_sit_chair_pipe_start_work';
		stopPipeAnimation = 'man_work_sit_chair_pipe_stop_work';
		
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_02_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_03_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_03_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_02_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_03_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_01_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_02_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_03_work');
		loopPipeAnimations.PushBack('man_work_sit_chair_pipe_04_work');
		
		startLeanAnimation = 'man_work_sit_chair_pipe_to_lean';
		stopLeanAnimation = 'man_work_dress_lean_chair_pipe_to_sit';
		LeantoSitAnimation = 'man_work_sit_lean_chair_pipe_stop';
		
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_01');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_02');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_04');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_01');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_05');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_01');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_02');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_04');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_01');
		loopLeanAnimations.PushBack('man_work_sit_lean_chair_pipe_05');
		
		startSleepAnimation = 'man_dress_work_sit_chair_sleep_start';
		stopSleepAnimation = 'man_dress_work_sit_chair_sleep_stop';
		
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_02');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_02');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_01');
		loopSleepAnimations.PushBack('man_dress_work_sit_chair_sleep_02');
		
		loopFace.PushBack('sleeping_anim_combined_face');
								
		this.PushState('Turn180');			
	}
}	
	
	
state Turn180 in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {	
		
		PlayTurnAnimation();		
	}
	
	entry function PlayTurnAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.turnAnimation);					
		parent.PushState('StartSitChairNeutral');	
	}
}

state StartSitChairNeutral in cSitChairNeutral {

	var playerheading                       : float; 
    var playerpos	                        : Vector;
	
	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		
		playerheading = thePlayer.GetHeading();
        playerpos = thePlayer.GetWorldPosition();
        thePlayer.Teleport(playerpos + VecFromHeading(playerheading) * -0.4);		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitChairNeutral');	
	}
}

state LoopSitChairNeutral in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitChairNeutral');
		}

        if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('StartCross');

        }
		
		if(theInput.IsActionPressed( 'Switch2' )) {				
							
		    parent.PushState('StartPipe');	

        }
		
		if(theInput.IsActionPressed( 'Switch3' )) {				
							
		    parent.PushState('StartSleep');			
			
			}
        }
	}	    
}

state StartSleep in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStartSleepAnimation();		
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_closing_eyes_face');
	}	
	
	entry function PlayStartSleepAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startSleepAnimation);
		parent.PushState('LoopSleep');	
	}
}

state LoopSleep in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopSleepAnimation();		
	}	
	
	entry function PlayLoopSleepAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopSleepAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('StopSleep');		
				}
			}
        }
	}	    
}

state StopSleep in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStopSleepAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_shake_it_off_face');
	}	
	
	entry function PlayStopSleepAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopSleepAnimation);
		parent.GotoState('LoopSitChairNeutral');	
	}
}

state StartPipe in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStartPipeAnimation();	
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_thankful_face');
	}	
	
	entry function PlayStartPipeAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startPipeAnimation);
		parent.PushState('LoopPipe');	
	}
}

state LoopPipe in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopPipeAnimation();		
	}	
	
	entry function PlayLoopPipeAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopPipeAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopPipeAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopPipeAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopPipe');
		}

        if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('StartLean');		
			
			}
        }
	}	    
}

state StartLean in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStartLeanAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');
	}	
	
	entry function PlayStartLeanAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startLeanAnimation);
		parent.PushState('LoopLean');	
	}
}

state LoopLean in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopLeanAnimation();
	}	
	
	entry function PlayLoopLeanAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopLeanAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopLeanAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopLeanAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('StopLean');
		}

        if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('LeanToSit');
			
			}
        }
	}	    
}

state LeanToSit in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStartLeanToSitAnimation();	
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_vodka_face');
	}	
	
	entry function PlayStartLeanToSitAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.LeantoSitAnimation);
		parent.GotoState('LoopSitChairNeutral');	
	}
}

state StopLean in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStopLeanAnimation();
	}	
	
	entry function PlayStopLeanAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopLeanAnimation);
		parent.GotoState('LoopPipe');	
	}
}

state StopPipe in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStopPipeAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_thankful_face');
	}	
	
	entry function PlayStopPipeAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopPipeAnimation);
		parent.GotoState('LoopSitChairNeutral');	
	}
}

state StartCross in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStartCrossAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_sour_face');
	}	
	
	entry function PlayStartCrossAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startCrossAnimation);
		parent.PushState('LoopCross');	
	}
}

state LoopCross in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopCrossAnimation();		
	}	
	
	entry function PlayLoopCrossAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopCrossAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopCrossAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopCrossAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('StopCross');		
			
			}
        }
	}	    
}

state StopCross in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStopCrossAnimation();		
	}	
	
	entry function PlayStopCrossAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopCrossAnimation);
		parent.GotoState('LoopSitChairNeutral');	
	}
}

state StopSitChairNeutral in cSitChairNeutral {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////LeanWallHips\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cLeanWallHips extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_leaning_against_wall_hands_on_hips_start';
		stopAnimation = 'man_leaning_against_wall_hands_on_hips_end';
		
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop1');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop_2');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop1');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop_2');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop1');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop_2');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop1');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop_2');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop1');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop_2');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop1');
		loopAnimations.PushBack('man_leaning_against_wall_hands_on_hips_loop_2');
								
		this.PushState('StartLeanWallHips');			
	}
}

state StartLeanWallHips in cLeanWallHips {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopLeanWallHips');	
	}
}

state LoopLeanWallHips in cLeanWallHips {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopLeanWallHips');
			
			}
        }
	}	    
}

state StopLeanWallHips in cLeanWallHips {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////PayRespects\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cPayRespects extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'geralt_paying_respects_to_vesemir_start';
		stopAnimation = 'geralt_paying_respects_to_vesemir_end';
		
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		loopAnimations.PushBack('geralt_paying_respects_to_vesemir_loop');
		
		loopFace.PushBack('sleeping_anim_combined_face');
								
		this.PushState('StartPayRespects');			
	}
}	
	
	
state StartPayRespects in cPayRespects {

	event OnEnterState(prevStateName : name) {	
		
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_closing_eyes_face');
		PlayStartAnimation();
		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopPayRespects');	
	}
}

state LoopPayRespects in cPayRespects {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
						
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopPayRespects');
				}
			}
        }
	}	    
}

state StopPayRespects in cPayRespects {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_what_face');		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}


////////////////////////////////////////////////////////////////SitSharpenSword\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

statemachine class cSitSharpenSword extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var turnAnimation                       : name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_sharpening_sword_start';
		stopAnimation = 'man_sharpening_sword_stop';
		turnAnimation = 'geralt_turn_180_l';
		
		loopAnimations.PushBack('man_sharpening_sword_loop_1');
		loopAnimations.PushBack('man_sharpening_sword_loop_2');
		loopAnimations.PushBack('man_sharpening_sword_loop_3');
		loopAnimations.PushBack('man_sharpening_sword_loop_4');
		loopAnimations.PushBack('man_sharpening_sword_loop_1');
		loopAnimations.PushBack('man_sharpening_sword_loop_2');
		loopAnimations.PushBack('man_sharpening_sword_loop_3');
		loopAnimations.PushBack('man_sharpening_sword_loop_4');
		loopAnimations.PushBack('man_sharpening_sword_loop_1');
		loopAnimations.PushBack('man_sharpening_sword_loop_2');
		loopAnimations.PushBack('man_sharpening_sword_loop_3');
		loopAnimations.PushBack('man_sharpening_sword_loop_4');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('Turn180');			
	}
}	
	
	
state Turn180 in cSitSharpenSword {

	event OnEnterState(prevStateName : name) {	
		
		PlayTurnAnimation();		
	}
	
	entry function PlayTurnAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.turnAnimation);					
		parent.PushState('StartSitSharpenSword');	
	}
}

state StartSitSharpenSword in cSitSharpenSword {

	var playerheading                       : float; 
    var playerpos	                        : Vector;
	
	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		
		playerheading = thePlayer.GetHeading();
        playerpos = thePlayer.GetWorldPosition();
        thePlayer.Teleport(playerpos + VecFromHeading(playerheading) * -0.6);		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitSharpenSword');	
	}
}

state LoopSitSharpenSword in cSitSharpenSword {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
		
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitSharpenSword');
				}
			}
        }
	}	    
}

state StopSitSharpenSword in cSitSharpenSword {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitChairRelaxed\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitChairRelaxed extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_relaxed_sitting_and_resting_start';
		stopAnimation = 'man_work_relaxed_sitting_and_resting_stop';
		
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_1');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_2');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_3');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_1');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_2');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_3');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_1');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_2');
		loopAnimations.PushBack('man_work_relaxed_sitting_and_resting_3');
								
		this.PushState('StartSitChairRelaxed');			
	}
}	
	
state StartSitChairRelaxed in cSitChairRelaxed {

	var playerheading                       : float; 
    var playerpos	                        : Vector;
	
	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		
		playerheading = thePlayer.GetHeading();
        playerpos = thePlayer.GetWorldPosition();
        thePlayer.Teleport(playerpos + VecFromHeading(playerheading) * 0.2);		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitChairRelaxed');	
	}
}

state LoopSitChairRelaxed in cSitChairRelaxed {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitChairRelaxed');
			
			}
        }
	}	    
}

state StopSitChairRelaxed in cSitChairRelaxed {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitBathe\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitBathe extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sitting_bath_start';
		stopAnimation = 'man_work_sitting_bath_stop';
		
		loopAnimations.PushBack('man_work_sitting_bath_loop_01');
		loopAnimations.PushBack('man_work_sitting_bath_loop_02');
		loopAnimations.PushBack('man_work_sitting_bath_loop_03');
		loopAnimations.PushBack('man_work_sitting_bath_loop_01');
		loopAnimations.PushBack('man_work_sitting_bath_loop_02');
		loopAnimations.PushBack('man_work_sitting_bath_loop_03');
		loopAnimations.PushBack('man_work_sitting_bath_loop_01');
		loopAnimations.PushBack('man_work_sitting_bath_loop_02');
		loopAnimations.PushBack('man_work_sitting_bath_loop_03');
		
		loopFace.PushBack('geralt_neutral_gesture_vodka_face');
								
		this.PushState('StartSitBathe');			
	}
}	
	
	
state StartSitBathe in cSitBathe {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitBathe');	
	}
}

state LoopSitBathe in cSitBathe {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitBathe');
				}
			}
        }
	}	    
}

state StopSitBathe in cSitBathe {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitChairRead\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitChairRead extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sitting_chair_reading_book_start';
		stopAnimation = 'man_work_sitting_chair_reading_book_stop';
		
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_01');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_02');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_03');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_01');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_02');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_03');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_01');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_02');
		loopAnimations.PushBack('man_work_sitting_chair_reading_book_loop_03');
		
		loopFace.PushBack('geralt_neutral_gesture_wondering_face');
		loopFace.PushBack('geralt_neutral_gesture_squint_face');
								
		this.PushState('StartSitChairRead');			
	}
}	
	
	
state StartSitChairRead in cSitChairRead {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitChairRead');	
	}
}

state LoopSitChairRead in cSitChairRead {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitChairRead');
				}
			}
        }
	}	    
}

state StopSitChairRead in cSitChairRead {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitGroundWarmUp\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitGroundWarmUp extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_warming_up_while_sitting_start';
		stopAnimation = 'man_warming_up_while_sitting_stop';
		
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_1');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_2');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_3');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_4');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_1');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_2');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_3');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_4');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_1');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_2');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_3');
		loopAnimations.PushBack('man_warming_up_while_sitting_loop_4');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('StartSitGroundWarmUp');			
	}
}	
	
	
state StartSitGroundWarmUp in cSitGroundWarmUp {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitGroundWarmUp');	
	}
}

state LoopSitGroundWarmUp in cSitGroundWarmUp {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitGroundWarmUp');
				}
			}
        }
	}	    
}

state StopSitGroundWarmUp in cSitGroundWarmUp {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Flute\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cFlute extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_standing_playing_flute_start';
		stopAnimation = 'man_work_standing_playing_flute_stop';
		
		loopAnimations.PushBack('man_work_standing_playing_flute_loop_01');
		loopAnimations.PushBack('man_work_standing_playing_flute_loop_01');
		loopAnimations.PushBack('man_work_standing_playing_flute_loop_01');
		loopAnimations.PushBack('man_work_standing_playing_flute_loop_01');
		loopAnimations.PushBack('man_work_standing_playing_flute_loop_01');
		loopAnimations.PushBack('man_work_standing_playing_flute_loop_01');
		
		loopFace.PushBack('sleeping_anim_combined_face');
								
		this.PushState('StartFlute');			
	}
}	
	
	
state StartFlute in cFlute {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();	
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopFlute');	
	}
}

state LoopFlute in cFlute {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopFlute');
				}
			}
        }
	}	    
}

state StopFlute in cFlute {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_question_ver02_happy_face');
		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitGroundPain\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitGroundPain extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_kneeling_on_floor_in_pain_start';
		stopAnimation = 'man_kneeling_on_floor_in_pain_stop_01';
		
		loopAnimations.PushBack('man_kneeling_on_floor_in_pain_loop_01');
		loopAnimations.PushBack('man_kneeling_on_floor_in_pain_loop_01');
		loopAnimations.PushBack('man_kneeling_on_floor_in_pain_loop_01');
		loopAnimations.PushBack('man_kneeling_on_floor_in_pain_loop_01');
		loopAnimations.PushBack('man_kneeling_on_floor_in_pain_loop_01');
		loopAnimations.PushBack('man_kneeling_on_floor_in_pain_loop_01');
								
		loopFace.PushBack('geralt_neutral_gesture_death_shorter_face');	
		
		this.PushState('StartSitGroundPain');			
	}
}	
	
	
state StartSitGroundPain in cSitGroundPain {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitGroundPain');	
	}
}

state LoopSitGroundPain in cSitGroundPain {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitGroundPain');
				}
			}
        }
	}	    
}

state StopSitGroundPain in cSitGroundPain {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitGroundCrossLegged\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitGroundCrossLegged extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_praying_crossed_legs_start';
		stopAnimation = 'man_praying_crossed_legs_stop';
		
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		loopAnimations.PushBack('man_praying_crossed_legs_loop_03');
		
		loopFace.PushBack('sleeping_anim_combined_face');
								
		this.PushState('StartSitGroundCrossLegged');			
	}
}	
	
	
state StartSitGroundCrossLegged in cSitGroundCrossLegged {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();	
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_reaction_anguish_face');
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitGroundCrossLegged');	
	}
}

state LoopSitGroundCrossLegged in cSitGroundCrossLegged {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitGroundCrossLegged');
				}
			}
        }
	}	    
}

state StopSitGroundCrossLegged in cSitGroundCrossLegged {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();	
		((CActor)thePlayer).PlayMimicAnimationAsync('neutral_eyes_soft_face');
		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SleepGroundDrunk\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSleepGroundDrunk extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_lying_drunk_by_the_wall_start';
		stopAnimation = 'man_lying_drunk_by_the_wall_stop';
		
		loopAnimations.PushBack('man_lying_drunk_by_the_wall_loop_01');
		loopAnimations.PushBack('man_lying_drunk_by_the_wall_loop_01');
		loopAnimations.PushBack('man_lying_drunk_by_the_wall_loop_01');
		loopAnimations.PushBack('man_lying_drunk_by_the_wall_loop_01');
		loopAnimations.PushBack('man_lying_drunk_by_the_wall_loop_01');
		loopAnimations.PushBack('man_lying_drunk_by_the_wall_loop_01');
		
		loopFace.PushBack('sleeping_anim_combined_face');
								
		this.PushState('StartSleepGroundDrunk');			
	}
}	
	
	
state StartSleepGroundDrunk in cSleepGroundDrunk {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_yawn_no_head_anim_face');		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSleepGroundDrunk');	
	}
}

state LoopSleepGroundDrunk in cSleepGroundDrunk {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSleepGroundDrunk');
				}
			}
        }
	}	    
}

state StopSleepGroundDrunk in cSleepGroundDrunk {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();
		((CActor)thePlayer).PlayMimicAnimationAsync('geralt_neutral_gesture_vodka_face');		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////SitGroundInjured\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cSitGroundInjured extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_quest_broken_leg_sitdown';
		stopAnimation = 'man_quest_broken_leg_standup';
		
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_01');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_02');
		loopAnimations.PushBack('man_work_broken_leg_idle_01');
		
								
		this.PushState('StartSitGroundInjured');			
	}
}	
	
	
state StartSitGroundInjured in cSitGroundInjured {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopSitGroundInjured');	
	}
}

state LoopSitGroundInjured in cSitGroundInjured {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopSitGroundInjured');
			
			}
        }
	}	    
}

state StopSitGroundInjured in cSitGroundInjured {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

 
////////////////////////////////////////////////////////////////Broom\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cBroom extends W3UsableItem {

	var equipAnimation						: name;
	var startAnimation						: name;
	var stopAnimation 						: name;
	var unequipAnimation					: name;
	var loopAnimations						: array<name>;
	var IdleAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var IdleAnimation						: name;
	var WalkAnimation						: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		equipAnimation = 'man_work_broom_start';
		startAnimation = 'man_work_broom_sweeping_start';
		stopAnimation = 'man_work_broom_sweeping_stop';
		unequipAnimation = 'man_work_broom_stop';
		
		WalkAnimation = 'man_work_broom_walk';
		
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		loopAnimations.PushBack('man_work_broom_sweeping_01');
		
		IdleAnimations.PushBack('man_work_broom_idle');
		IdleAnimations.PushBack('man_work_broom_idle');
		IdleAnimations.PushBack('man_work_broom_idle');
		IdleAnimations.PushBack('man_work_broom_idle');
		IdleAnimations.PushBack('man_work_broom_idle');
		IdleAnimations.PushBack('man_work_broom_idle');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('EquipBroom');			
	}
}	
	
state EquipBroom in cBroom {

	event OnEnterState(prevStateName : name) {	
		
		PlayEquipAnimation();		
	}
	
	entry function PlayEquipAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.equipAnimation);					
		parent.PushState('IdleBroom');	
	}
}

state IdleBroom in cBroom {

	event OnEnterState(prevStateName : name) {
				
		PlayIdleAnimation();		
	}	
	
	entry function PlayIdleAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.IdleAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.IdleAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.IdleAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Switch2' )) {				
							
		    parent.PushState('WalkBroom');
		}
		
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.PushState('StartBroom');
		}
		
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('UnequipBroom');
			
			}
        }
	}	    
}

state WalkBroom in cBroom {

	event OnEnterState(prevStateName : name) {	
		
		PlayWalkAnimation();		
	}
	
	entry function PlayWalkAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.WalkAnimation);					
		parent.GotoState('IdleBroom');	
	}
}

state StartBroom in cBroom {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopBroom');	
	}
}

state LoopBroom in cBroom {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Switch' )) {				
							
		    parent.GotoState('StopBroom');
		}
		
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('UnequipBroom');
				}
			}
        }
	}	    
}

state StopBroom in cBroom {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
		parent.GotoState('IdleBroom');
	}
}

state UnequipBroom in cBroom {

	event OnEnterState(prevStateName : name) {
		
		PlayUnequipAnimation();		
	}	
	
	entry function PlayUnequipAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.unequipAnimation);
	}
}

////////////////////////////////////////////////////////////////Hoe\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cHoe extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_standing_farmer_hoe_start';
		stopAnimation = 'man_work_standing_farmer_hoe_stop';
		
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		loopAnimations.PushBack('man_work_standing_farmer_hoe_loop_01');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
		
		this.PushState('StartHoe');			
	}
}	
	
	
state StartHoe in cHoe {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopHoe');	
	}
}

state LoopHoe in cHoe {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopHoe');
				}
			}
        }
	}	    
}

state StopHoe in cHoe {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////FieldWork\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cFieldWork extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>; 
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_working_on_field_with_scythe_start';
		stopAnimation = 'man_work_working_on_field_with_scythe_stop';
		
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_1');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_2');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_3');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_4');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_5');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_6');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_7');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_8');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_1');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_2');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_3');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_4');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_5');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_6');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_7');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_8');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_1');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_2');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_3');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_4');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_5');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_6');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_7');
		loopAnimations.PushBack('man_work_working_on_field_with_scythe_8');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('StartFieldWork');			
	}
}	
	
	
state StartFieldWork in cFieldWork {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopFieldWork');	
	}
}

state LoopFieldWork in cFieldWork {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopFieldWork');
				}
			}
        }
	}	    
}

state StopFieldWork in cFieldWork {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Cook\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cCook extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_cooking_start';
		stopAnimation = 'man_work_cooking_stop';
		
		loopAnimations.PushBack('man_work_cooking_01');
		loopAnimations.PushBack('man_work_cooking_02');
		loopAnimations.PushBack('man_work_cooking_03');
		loopAnimations.PushBack('man_work_cooking_01');
		loopAnimations.PushBack('man_work_cooking_02');
		loopAnimations.PushBack('man_work_cooking_03');
		loopAnimations.PushBack('man_work_cooking_01');
		loopAnimations.PushBack('man_work_cooking_02');
		loopAnimations.PushBack('man_work_cooking_03');
								
		this.PushState('LoopCook');			
	}
}	
	
	
state StartCook in cCook {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopCook');	
	}
}

state LoopCook in cCook {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopCook');
			
			}
        }
	}	    
}

state StopCook in cCook {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////BrushHorse\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cBrushHorse extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_brushing_horse_start';
		stopAnimation = 'man_work_brushing_horse_stop';
		
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle2');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle2');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle1');
		loopAnimations.PushBack('man_work_brushing_horse_idle2');
		
		loopFace.PushBack('geralt_reaction_eye_smile_face');
		
		this.PushState('StartBrushHorse');			
	}
}	
	
	
state StartBrushHorse in cBrushHorse {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopBrushHorse');	
	}
}

state LoopBrushHorse in cBrushHorse {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;
		
		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);

		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopBrushHorse');
				}
			}
        }
	}	    
}

state StopBrushHorse in cBrushHorse {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////PickAxe\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cPickAxe extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>; 
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_standing_miner_pickaxe_start';
		stopAnimation = 'man_work_standing_miner_pickaxe_stop';
		
		loopAnimations.PushBack('man_work_standing_miner_pickaxe_loop_01');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('StartPickAxe');			
	}
}	
	
	
state StartPickAxe in cPickAxe {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopPickAxe');	
	}
}

state LoopPickAxe in cPickAxe {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopPickAxe');
				}
			}
        }
	}	    
}

state StopPickAxe in cPickAxe {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////BrushFloor\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cBrushFloor extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_brush_floor_start';
		stopAnimation = 'man_work_brush_floor_stop';
		
		loopAnimations.PushBack('man_work_brush_floor_01');
		loopAnimations.PushBack('man_work_brush_floor_02');
		loopAnimations.PushBack('man_work_brush_floor_03');
		loopAnimations.PushBack('man_work_brush_floor_04');
		loopAnimations.PushBack('man_work_brush_floor_01');
		loopAnimations.PushBack('man_work_brush_floor_02');
		loopAnimations.PushBack('man_work_brush_floor_03');
		loopAnimations.PushBack('man_work_brush_floor_04');
		loopAnimations.PushBack('man_work_brush_floor_01');
		loopAnimations.PushBack('man_work_brush_floor_02');
		loopAnimations.PushBack('man_work_brush_floor_03');
		loopAnimations.PushBack('man_work_brush_floor_04');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('StartBrushFloor');			
	}
}	
	
	
state StartBrushFloor in cBrushFloor {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopBrushFloor');	
	}
}

state LoopBrushFloor in cBrushFloor {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopBrushFloor');
				}
			}
        }
	}	    
}

state StopBrushFloor in cBrushFloor {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Shovel\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cShovel extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_digging_shovel_start';
		stopAnimation = 'man_work_digging_shovel_stop';
		
		loopAnimations.PushBack('man_work_digging_shovel_loop_01');
		loopAnimations.PushBack('man_work_digging_shovel_loop_02');
		loopAnimations.PushBack('man_work_digging_shovel_loop_03');
		loopAnimations.PushBack('man_work_digging_shovel_loop_04');
		loopAnimations.PushBack('man_work_digging_shovel_loop_01');
		loopAnimations.PushBack('man_work_digging_shovel_loop_02');
		loopAnimations.PushBack('man_work_digging_shovel_loop_03');
		loopAnimations.PushBack('man_work_digging_shovel_loop_04');
		loopAnimations.PushBack('man_work_digging_shovel_loop_01');
		loopAnimations.PushBack('man_work_digging_shovel_loop_02');
		loopAnimations.PushBack('man_work_digging_shovel_loop_03');
		loopAnimations.PushBack('man_work_digging_shovel_loop_04');
								
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
		
		this.PushState('StartShovel');			
	}
}	
	
	
state StartShovel in cShovel {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopShovel');	
	}
}

state LoopShovel in cShovel {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopShovel');
				}
			}
        }
	}	    
}

state StopShovel in cShovel {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Pitchfork\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cPitchfork extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_tossing_hay_with_pitchfork_start';
		stopAnimation = 'man_tossing_hay_with_pitchfork_loop_end';
		
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_1');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_2');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_3');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_4');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_5');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_6');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_1');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_2');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_3');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_4');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_5');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_6');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_1');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_2');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_3');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_4');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_5');
		loopAnimations.PushBack('man_tossing_hay_with_pitchfork_loop_6');
		
		loopFace.PushBack('geralt_neutral_gesture_sour_face');
								
		this.PushState('StartPitchfork');			
	}
}	
	
	
state StartPitchfork in cPitchfork {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopPitchfork');	
	}
}

state LoopPitchfork in cPitchfork {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopPitchfork');
				}
			}
        }
	}	    
}

state StopPitchfork in cPitchfork {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Fishing\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cFishing extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	
	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_work_sitting_with_fishing_rod_start';
		stopAnimation = 'man_work_sitting_with_fishing_rod_stop';
		
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
		loopAnimations.PushBack('man_work_sitting_with_fishing_rod_loop_01');
								
		this.PushState('StartFishing');			
	}
}	
	
	
state StartFishing in cFishing {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopFishing');	
	}
}

state LoopFishing in cFishing {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
						
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopFishing');
			
			}
        }
	}	    
}

state StopFishing in cFishing {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}

////////////////////////////////////////////////////////////////Fan\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	
statemachine class cFan extends W3UsableItem {

	var startAnimation						: name;
	var stopAnimation 						: name;
	var loopAnimations						: array<name>;
	var currAnimationUsed			    	: name;
	var currFaceUsed						: name;
	var loopFace					  		: array<name>;

	event OnSpawned(spawnData : SEntitySpawnData) {		
				
		this.Init();
	}
	
    function Start() {
	
		Init();	
	}
	
    function Init(){
				
		startAnimation = 'man_nobel_with_fan_start';
		stopAnimation = 'man_nobel_with_fan_end';
		
		loopAnimations.PushBack('man_nobel_with_fan_loop_1');
		loopAnimations.PushBack('man_nobel_with_fan_loop_2');
		loopAnimations.PushBack('man_nobel_with_fan_loop_1');
		loopAnimations.PushBack('man_nobel_with_fan_loop_2');
		loopAnimations.PushBack('man_nobel_with_fan_loop_1');
		loopAnimations.PushBack('man_nobel_with_fan_loop_2');
		loopAnimations.PushBack('man_nobel_with_fan_loop_1');
		loopAnimations.PushBack('man_nobel_with_fan_loop_2');
		loopAnimations.PushBack('man_nobel_with_fan_loop_1');
		loopAnimations.PushBack('man_nobel_with_fan_loop_2');
		
		loopFace.PushBack('geralt_reaction_relief_face');
		
		this.PushState('StartFan');			
	}
}	
	
	
state StartFan in cFan {

	event OnEnterState(prevStateName : name) {	
		
		PlayStartAnimation();		
	}
	
	entry function PlayStartAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.startAnimation);					
		parent.PushState('LoopFan');	
	}
}

state LoopFan in cFan {

	event OnEnterState(prevStateName : name) {
				
		PlayLoopAnimation();		
	}	
	
	entry function PlayLoopAnimation() {
				
		var i : int;
		var o : int;

		for(o = 0; o < parent.loopFace.Size(); o += 1) {
		for(i = 0; i < parent.loopAnimations.Size(); i += 1) {
		
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);
		
			parent.currAnimationUsed = parent.loopAnimations[i];
			thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.loopAnimations[i]);	
				
			parent.currFaceUsed = parent.loopFace[o];
			((CActor)thePlayer).PlayMimicAnimationAsync(parent.loopFace[o]);	
			
		if(theInput.IsActionPressed( 'Disengage' )) {				
							
		    parent.PushState('StopFan');
				}
			}
        }
	}	    
}

state StopFan in cFan {

	event OnEnterState(prevStateName : name) {
		
		PlayStopAnimation();		
	}	
	
	entry function PlayStopAnimation() {
		
		thePlayer.ActionPlaySlotAnimation('PLAYER_SLOT', parent.stopAnimation);
	}
}