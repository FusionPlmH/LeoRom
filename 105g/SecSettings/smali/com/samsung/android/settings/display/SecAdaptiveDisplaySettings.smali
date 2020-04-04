.class public Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecAdaptiveDisplaySettings.java"


# instance fields
.field private mAdaptiveDisplayView:Landroid/view/View;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mBlueLabel:Landroid/widget/TextView;

.field private final mBluelightFilterObserver:Landroid/database/ContentObserver;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCustomSeekBarBlue:Landroid/widget/SeekBar;

.field private final mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarGreen:Landroid/widget/SeekBar;

.field private final mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarRed:Landroid/widget/SeekBar;

.field private final mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mDTBlueObserver:Landroid/database/ContentObserver;

.field private final mDTGreenObserver:Landroid/database/ContentObserver;

.field private final mDTRedObserver:Landroid/database/ContentObserver;

.field private mEdgeColorBalance:Landroid/widget/LinearLayout;

.field private mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mEdgeColorBalanceSubText:Landroid/widget/TextView;

.field private mEdgeColorBalanceTitleText:Landroid/widget/TextView;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mGreenLabel:Landroid/widget/TextView;

.field private mIsCustomEdgeBalanceSupported:Z

.field private mIsFocusableBlue:Z

.field private mIsFocusableGreen:Z

.field private mIsFocusableRed:Z

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mRedLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    iput v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$1;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$4;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$7;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$9;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$12;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->startEdgeColorBalance()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    return p1
.end method

.method private createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "SecAdaptiveDisplaySettings"

    const-string v1, "createAdaptiveDisplayView()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    const v0, 0x7f0d017d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->supportEdgeColorBalanceSettings(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    const-string v0, "SecAdaptiveDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate():  mIsCustomEdgeBalanceSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->initColorBalance()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->setEdgeColorBalanceCustomItemsVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    return-object v0
.end method

.method private initColorBalance()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->initColorBalanceCustomDB()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v1, 0x7f0a0649

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v1, 0x7f0a01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sec_display_temperature_red"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v4, 0x7f0a0354

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v4, 0x7f0a01f1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sec_display_temperature_green"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v4, 0x7f0a0109

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v4, 0x7f0a01f0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sec_display_temperature_blue"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v3, 0x7f0a0296

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v3, 0x7f0a029e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v3, 0x7f0a029d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12146a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    const v1, 0x7f0805da

    const v3, 0x7f0601bb

    const/16 v4, 0xf

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a01ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method private initColorBalanceCustomDB()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_custom"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SecAdaptiveDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_temperature_red"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "sec_display_temperature_green"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "SecAdaptiveDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init DB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sec_display_temperature_custom"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sec_display_temperature_custom"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    return v0
.end method

.method private setEdgeColorBalanceCustomItemsVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v3, 0x7f0a07e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateColorBalanceCustomItems(Z)V

    return-void
.end method

.method private showEdgeColorBalanceBatteryCheckDialog()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121469

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121468

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startEdgeColorBalance()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->showEdgeColorBalanceBatteryCheckDialog()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.EDGE_COLOR_BALANCE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateColorBalanceCustomItems(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_red"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_green"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_blue"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_temperature_red"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_temperature_green"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_temperature_blue"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d1a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const-string v0, "SecAdaptiveDisplaySettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "SecAdaptiveDisplaySettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d50

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->finish()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateTemperatureSettingsState()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->isTemperatureSettingEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->setPreferenceEnable(Z)V

    return-void
.end method
