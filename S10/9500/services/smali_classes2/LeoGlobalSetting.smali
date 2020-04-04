.class public Lcom/fusionleo/LeoProvider/LeoGlobalSetting;
.super Ljava/lang/Object;
.source "LeoGlobalSetting.java"


# static fields
.field public static Config:Ljava/lang/String; = null

.field public static ConfigManager:Ljava/lang/String; = null

.field public static final LEOPREFE:Ljava/lang/String;

.field public static final LockScreenAction:Ljava/lang/String; = "keyguard_"

.field public static final SecurityCode:Ljava/lang/String;

.field public static mKillWhite:Ljava/lang/String;

.field public static mLeoGlobalService:Ljava/lang/String;

.field public static final setBixbyClickAction:Ljava/lang/String;

.field public static final setBixbyClickKeyguardAction:Ljava/lang/String;

.field public static final setBixbyLongAction:Ljava/lang/String;

.field public static final setBixbyLongKeyguardAction:Ljava/lang/String;

.field public static final setFingerprintDownAction:Ljava/lang/String;

.field public static final setFingerprintUPAction:Ljava/lang/String;

.field public static setGlobalAmberLeoLandscapeNavBarHeight:I

.field public static setGlobalAmberLeoNavBarHeightLandscape:Z

.field public static setGlobalAmberLeoNavBarHeightPortrait:Z

.field public static setGlobalAmberLeoPortraitNavBarHeight:I

.field public static final setGlobalBottomActionGestures:Ljava/lang/String;

.field public static final setGlobalLeftActionGestures:Ljava/lang/String;

.field public static final setGlobalRightActionGestures:Ljava/lang/String;

.field public static final setGlobalTopActionGestures:Ljava/lang/String;

.field public static final setHeightLandscape:Ljava/lang/String;

.field public static final setHeightPortrait:Ljava/lang/String;

.field public static setLeoGlobalBixbyClickAction:I

.field public static setLeoGlobalBixbyClickKeyguardAction:I

.field public static setLeoGlobalBixbyEnableAction:I

.field public static setLeoGlobalBixbyLongPressAction:I

.field public static setLeoGlobalBixbyLongPressKeyguardAction:I

.field public static setLeoGlobalBottomActionGestures:I

.field public static setLeoGlobalEnableFingerGestures:Z

.field public static setLeoGlobalEnablePowerGlobalActionsStyle:Z

.field public static setLeoGlobalFingerGesturesCount:I

.field public static setLeoGlobalFingerGesturesVibratorLevel:I

.field public static setLeoGlobalFingerprintDownAction:I

.field public static setLeoGlobalFingerprintUPAction:I

.field public static setLeoGlobalHwKeysEnableAction:Z

.field public static setLeoGlobalHwKyesVibratorLevel:I

.field public static setLeoGlobalLeftActionGestures:I

.field public static setLeoGlobalLongPressOnBackAction:I

.field public static setLeoGlobalLongPressOnHomeAction:I

.field public static setLeoGlobalLongPressOnRecentAction:I

.field public static setLeoGlobalPowerDoubleAction:I

.field public static setLeoGlobalPowerDoubleKeyguardAction:I

.field public static setLeoGlobalPowerEnableAction:Z

.field public static setLeoGlobalPowerGlobalActionsStyle:I

.field public static setLeoGlobalPowerLongPressAction:I

.field public static setLeoGlobalPowerLongPressKeyguardAction:I

.field public static setLeoGlobalRightActionGestures:I

.field public static setLeoGlobalTopActionGestures:I

.field public static setLeowGlobalFingerGesturesVibratorEnable:I

.field public static setLeowGlobalHwKyesVibratorEnable:I

.field public static final setLongPressOnBackAction:Ljava/lang/String;

.field public static final setLongPressOnHomeAction:Ljava/lang/String;

.field public static final setLongPressOnRecentAction:Ljava/lang/String;

.field public static final setNavBarHeightLandscape:Ljava/lang/String;

.field public static final setNavBarHeightPortrait:Ljava/lang/String;

.field public static final setPowerDoubleAction:Ljava/lang/String;

.field public static final setPowerDoubleKeyguardAction:Ljava/lang/String;

.field public static final setPowerLongPressAction:Ljava/lang/String;

.field public static final setPowerLongPressKeyguardAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "salt6.6"

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->Config:Ljava/lang/String;

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->Config:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoService()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->mLeoGlobalService:Ljava/lang/String;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoframe()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->ConfigManager:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyLongPressAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyLongPressKeyguardAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeowGlobalHwKyesVibratorEnable:I

    const/16 v1, 0xf

    sput v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalHwKyesVibratorLevel:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyClickAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyClickKeyguardAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyEnableAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerDoubleAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerLongPressAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerDoubleKeyguardAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerLongPressKeyguardAction:I

    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerEnableAction:Z

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerprintUPAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerprintDownAction:I

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoPreList()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalBixbyClickAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyClickAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalBixbyLongPressAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyLongAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "keyguard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalBixbyClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyClickKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalBixbyLongPressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyLongKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerDoubleAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setPowerDoubleAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerDoubleAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setPowerDoubleKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerLongPressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setPowerLongPressAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerLongPressAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setPowerLongPressKeyguardAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerprintUPAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setFingerprintUPAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerprintDownAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setFingerprintDownAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalLongPressOnRecentAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLongPressOnRecentAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalLongPressOnHomeAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLongPressOnHomeAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalLongPressOnBackAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLongPressOnBackAction:Ljava/lang/String;

    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalHwKeysEnableAction:Z

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLongPressOnRecentAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLongPressOnHomeAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLongPressOnBackAction:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalTopActionGestures:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLeftActionGestures:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalRightActionGestures:I

    const/4 v2, 0x3

    sput v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerGesturesCount:I

    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalEnableFingerGestures:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerTopActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalTopActionGestures:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerLeftActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalLeftActionGestures:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerRightActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalRightActionGestures:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerBottomActionGestures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalBottomActionGestures:Ljava/lang/String;

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeowGlobalFingerGesturesVibratorEnable:I

    sput v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerGesturesVibratorLevel:I

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBottomActionGestures:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalEnablePowerGlobalActionsStyle:Z

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getSafetyCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->SecurityCode:Ljava/lang/String;

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerGlobalActionsStyle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setNavBarHeightLandscape:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setNavBarHeightPortrait:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setHeightLandscape:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setHeightPortrait:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LeoSetting(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoKillWhiteList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->mKillWhite:Ljava/lang/String;

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyLongAction:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyLongPressAction:I

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyClickAction:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyClickAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalBixbyEnableAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyEnableAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalHwKeysEnableAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalVibratorEnable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeowGlobalHwKyesVibratorEnable:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalHwKeysEnableAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalVibratorLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    invoke-static {p0, v0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalHwKyesVibratorLevel:I

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyClickKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyClickKeyguardAction:I

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setBixbyLongKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBixbyLongPressKeyguardAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerEnableAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerEnableAction:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerDoubleAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerDoubleAction:I

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setPowerDoubleKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerDoubleKeyguardAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerLongPressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerLongPressAction:I

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setPowerLongPressKeyguardAction:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerLongPressKeyguardAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerprintUPAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerprintUPAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerprintDownAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerprintDownAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalHwKeysEnableAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalHwKeysEnableAction:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalLongPressOnRecentAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLongPressOnRecentAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalLongPressOnHomeAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLongPressOnHomeAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalLongPressOnBackAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLongPressOnBackAction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalEnableFingerGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalEnableFingerGestures:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalEnableFingerGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalVibratorEnable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeowGlobalFingerGesturesVibratorEnable:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalEnableFingerGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalVibratorLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerGesturesVibratorLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerTopActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalTopActionGestures:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerLeftActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalLeftActionGestures:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerRightActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalRightActionGestures:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerBottomActionGestures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalBottomActionGestures:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerGesturesCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p0, v0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerGesturesCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalFingerGesturesCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalFingerGesturesCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerGlobalActionsStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalEnablePowerGlobalActionsStyle:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalPowerGlobalActionsStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setLeoGlobalPowerGlobalActionsStyle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    sput-boolean v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalAmberLeoNavBarHeightLandscape:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    sput-boolean v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalAmberLeoNavBarHeightPortrait:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalAmberLeoLandscapeNavBarHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getLeoGlobalStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->setGlobalAmberLeoPortraitNavBarHeight:I

    return-void
.end method

.method public static native getCodeNumber()Ljava/lang/String;
.end method

.method public static native getLeoGlobalAmberLeoNavBarHeightLandscape()Ljava/lang/String;
.end method

.method public static native getLeoGlobalAmberLeoNavBarHeightPortrait()Ljava/lang/String;
.end method

.method public static native getLeoGlobalBixbyClickAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalBixbyEnableAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalBixbyLongPressAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalEnableFingerGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerBottomActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerGesturesCount()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerLeftActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerRightActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerTopActionGestures()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerprintDownAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalFingerprintUPAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalHwKeysEnableAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalLongPressOnBackAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalLongPressOnHomeAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalLongPressOnRecentAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerDoubleAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerEnableAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerGlobalActionsStyle()Ljava/lang/String;
.end method

.method public static native getLeoGlobalPowerLongPressAction()Ljava/lang/String;
.end method

.method public static native getLeoGlobalStyle()Ljava/lang/String;
.end method

.method public static native getLeoGlobalVibratorEnable()Ljava/lang/String;
.end method

.method public static native getLeoGlobalVibratorLevel()Ljava/lang/String;
.end method

.method public static native getLeoKillWhiteList()Ljava/lang/String;
.end method

.method static native getLeoPreList()Ljava/lang/String;
.end method

.method static native getLeoService()Ljava/lang/String;
.end method

.method static native getLeoframe()Ljava/lang/String;
.end method

.method public static native getSafety()Ljava/lang/String;
.end method

.method public static native getSafetyCode()Ljava/lang/String;
.end method

.method public static getSafetyVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->getSafety()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
